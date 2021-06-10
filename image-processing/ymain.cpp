#include <opencv/cv.hpp>
#include <opencv/highgui.h>
#include <iostream>
#include <functional>

using namespace std;
using namespace cv;

int findBiggestContour(vector<vector<Point> > contours, int s1){
    int indexOfBiggestContour = -1;
    int sizeOfBiggestContour = 0;
    for (int i = 0; i < contours.size(); i++){
        if(contours[i].size() > sizeOfBiggestContour){
        	if(i == s1)
        		continue;
            sizeOfBiggestContour = contours[i].size();
            indexOfBiggestContour = i;
        }
    }
    return indexOfBiggestContour;
}

int main(int argc, char const *argv[])
{
	VideoCapture capture;
	Mat frame;
	Mat hsv, bw;
	Mat canny_output;
	int s1, s2;

	vector<vector<Point> > 	contours;
	vector<Vec4i> 			hierarchy;

	Rect objectBoundingRectangle1 = Rect(0,0,0,0);
	Rect objectBoundingRectangle2 = Rect(0,0,0,0);
	vector<Point> contours_poly1;
	vector<Point> contours_poly2;

	while(1){
		capture.open("hands.mp4");

		if(!capture.isOpened()){
			cout<<"ERROR ACQUIRING VIDEO FEED\n";
			getchar();
			return -1;
		}

		while(capture.get(CV_CAP_PROP_POS_FRAMES)<capture.get(CV_CAP_PROP_FRAME_COUNT)-1){
			capture.read(frame);
			blur( frame, frame, Size(3,3) );

    		cvtColor(frame, hsv, CV_BGR2HSV);
    		
    		inRange(hsv, Scalar(0, 60, 70), Scalar(180, 255, 170), bw);

		    findContours( bw, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );
		    if(!contours.size())
		    	printf("no contour found\n");
		    else {
		    	s1 = findBiggestContour(contours, -1);
		    }
		    if(!contours.size())
		    	printf("no second contour found\n");
		    else s2 = findBiggestContour(contours, s1);


		    Mat drawing = Mat::zeros( frame.size(), CV_8UC1 );
		    drawContours( drawing, contours, s1, Scalar(255), -1, 8, hierarchy, 0, Point() );
		    drawContours( drawing, contours, s2, Scalar(255), -1, 8, hierarchy, 0, Point() );

			approxPolyDP( Mat(contours[s1]), contours_poly1, 3, true );
			approxPolyDP( Mat(contours[s2]), contours_poly2, 3, true );

    		objectBoundingRectangle1 = boundingRect( Mat(contours_poly1) );
    		objectBoundingRectangle2 = boundingRect( Mat(contours_poly2) );

			circle(frame,Point(0,objectBoundingRectangle1.y),5,Scalar(0,255,0),2);
			circle(frame,Point(0,objectBoundingRectangle2.y),5,Scalar(0,0,255),2);

			imshow("src", frame);

			switch(waitKey(20)){

			case 27: //'esc' key has been pressed, exit program.
				return 0;

			}
		}
		capture.release();
	}
	return 0;
}
