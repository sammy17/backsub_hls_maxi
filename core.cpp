#include "core.h"



int backsub(uint8_t * frame_in, uint8_t * frame_out, bool init) {
#pragma HLS INTERFACE s_axilite port=init bundle=CRTL_BUS
#pragma HLS INTERFACE m_axi depth=103680 port=frame_out offset=slave
#pragma HLS INTERFACE m_axi depth=103680 port=frame_in offset=slave
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
#pragma HLS PROTOCOL fixed
	float alpha = 0.5;
	float beta = 0.3;
	float gamma = 0.2;

	uint8_t threshold = 15;

	uint8_t frame1[103680];
	uint8_t frame2[103680];
	uint8_t frame3[103680];
	uint8_t out[103680];

	memcopy1 : {
#pragma HLS PROTOCOL fixed
		memcpy(frame1, frame_in, sizeof(uint8_t) * 103680);
	}

loop1 : {
#pragma HLS PROTOCOL fixed
	if (init) {
		for (int i = 0; i < 288 * 360; i++) {
#pragma HLS PIPELINE
			uint8_t val = frame1[i];
			frame2[i] = val;
			frame3[i] = val;
			out[i] = val;
		}

	} else {

		for (int i = 0; i < 288 * 360; i++) {
#pragma HLS PIPELINE
			uint8_t val1 = frame1[i];
			uint8_t val2 = frame2[i];
			uint8_t val3 = frame3[i];

			frame2[i] = val1;
			frame3[i] = val2;
			uint8_t temp = alpha * val1 + beta * val2 + gamma * val3;
			if (threshold > abs(val1 - temp))
				out[i] = 0;
			else
				out[i] = 255;

		}
	}
}

	memcopy2 : {
#pragma HLS PROTOCOL fixed
		memcpy(frame_out,out,sizeof(uint8_t)*103680);
	}

	return 0;
}
