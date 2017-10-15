#include <hls_opencv.h>
#include "core.h"
//#include <opencv2/core/core.hpp>
#include <iostream>
#include <fstream>
#include <climits>
//#include "imgData.h"
//#include <opencv2/highgui/highgui.hpp>
#include <iostream>

#define DTYPE HLS_32FC3

cv::Mat IMG1(288, 360, CV_8UC1);
//cv::Mat IMG2(288, 360, CV_8UC1);
//cv::Mat IMG3(288, 360, CV_8UC1);

cv::Mat outImg(288, 360, CV_8UC1);
//cv::Mat outImg(360,288, CV_8UC1);

int main() {

	cv::Mat img_t;

//	cv::Mat img1 = cv::imread("test.png", CV_LOAD_IMAGE_GRAYSCALE);
//	cv::Mat img2 = cv::imread("test.png", CV_LOAD_IMAGE_GRAYSCALE);
//	cv::Mat img3 = cv::imread("test.png", CV_LOAD_IMAGE_GRAYSCALE);

	cv::VideoCapture cap;
	cv::Mat frame;
	cap.open("cut.avi");

	if (!cap.isOpened()) {
		std::cerr << "ERROR! Unable to open camera\n";
		return -1;
	}
	cap.read(frame);
	printf("height = %d, width = %d\n", frame.rows, frame.cols);
	cv::cvtColor(frame, IMG1, CV_BGR2GRAY);
//	cv::cvtColor(frame, IMG2, CV_BGR2GRAY);
//	cv::cvtColor(frame, IMG3, CV_BGR2GRAY);

	uint8_t frame_ar[103680];
	uint8_t frame_out[103680] = { 0 };

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
		//cv::namedWindow("Live2");
		cv::imshow("Live2", outImg);
		if (cv::waitKey(10) >= 0)
			break;

	}

	return 0;
}

