#include <hls_opencv.h>
#include "core.h"
#include <iostream>
#include <fstream>
#include <climits>
#include <iostream>

#define DTYPE HLS_32FC3

cv::Mat IMG1(IMG_H, IMG_W, CV_8UC1);
cv::Mat outImg(IMG_H, IMG_W, CV_8UC1);

int main() {

	cv::Mat img_t;

	cv::VideoCapture cap;
	cv::Mat frame;
	cap.open("cut_out.avi");

	if (!cap.isOpened()) {
		std::cerr << "ERROR! Unable to open camera\n";
		return -1;
	}
	cap.read(frame);
	printf("height = %d, width = %d\n", frame.rows, frame.cols);
	cv::cvtColor(frame, IMG1, CV_BGR2GRAY);

	uint8_t frame_ar[76800];
	uint8_t frame_out[76800] = { 0 };

	for (int idxrow = 0; idxrow < IMG1.rows; idxrow++) {
		for (int idxcol = 0; idxcol < IMG1.cols; idxcol++) {
			frame_ar[idxrow * IMG1.cols + idxcol] = IMG1.at<uint8_t>(idxrow,
					idxcol);
		}
	}

	bool init = 1;

	backsub(frame_ar, frame_out, init);

	for (int idxrow = 0; idxrow < IMG1.rows; idxrow++) {
		for (int idxcol = 0; idxcol < IMG1.cols; idxcol++) {
			outImg.at<uint8_t>(idxrow, idxcol) = frame_out[idxrow * IMG1.cols
					+ idxcol];
		}
	}

	cv::namedWindow("Live1");
	cv::imshow("Live1", IMG1);
	cv::namedWindow("Live2");
	cv::imshow("Live2", outImg);
	cv::waitKey(0);

	init = 0;
	for (;;) {
		// wait for a new frame from camera and store it into 'frame'
		cap.read(frame);
		// check if we succeeded
		if (frame.empty()) {
			std::cerr << "ERROR! blank frame grabbed\n";
			break;
		}
		cv::cvtColor(frame, IMG1, CV_BGR2GRAY);

		for (int idxrow = 0; idxrow < IMG1.rows; idxrow++) {
			for (int idxcol = 0; idxcol < IMG1.cols; idxcol++) {
				frame_ar[idxrow * IMG1.cols + idxcol] = IMG1.at<uint8_t>(idxrow,
						idxcol);
			}
		}

		//bool init = 1;

		backsub(frame_ar, frame_out, init);

		for (int idxrow = 0; idxrow < IMG1.rows; idxrow++) {
			for (int idxcol = 0; idxcol < IMG1.cols; idxcol++) {
				outImg.at<uint8_t>(idxrow, idxcol) = frame_out[idxrow
						* IMG1.cols + idxcol];
			}
		}
		cv::namedWindow("Live1");
		cv::imshow("Live1", IMG1);
		cv::imshow("Live2", outImg);
		if (cv::waitKey(10) >= 0)
			break;

	}

	return 0;
}

