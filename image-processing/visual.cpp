#include <opencv/cv.hpp>
#include <opencv/highgui.h>
#include <iostream>
#include <functional>

using namespace std;
using namespace cv;

void ontrackbar(int value, void*){
	return;
}

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
	bool pause = false;
	int s1, s2;

	vector<vector<Point> > 	contours;
	vector<Vec4i> 			hierarchy;


	// int slider11 = 100;
	// int slider12 = 60;
	// int slider13 = 60;

	// int slider21 = 180;
	// int slider22 = 125;
	// int slider23 = 125;

	// int slider11 = 0;
	// int slider12 = 40;
	// int slider13 = 30;

	// int slider21 = 180;
	// int slider22 = 255;
	// int slider23 = 120;

	int slider11 = 0;
	int slider12 = 60;
	int slider13 = 70;

	int slider21 = 180;
	int slider22 = 255;
	int slider23 = 170;

	namedWindow("dst", 1);

	Rect objectBoundingRectangle1 = Rect(0,0,0,0);
	Rect objectBoundingRectangle2 = Rect(0,0,0,0);
	vector<Point> contours_poly1;
	vector<Point> contours_poly2;

	createTrackbar( "Hmin", "dst", &slider11, 180, ontrackbar);
	createTrackbar( "Smin", "dst", &slider12, 255, ontrackbar);
	createTrackbar( "Vmin", "dst", &slider13, 255, ontrackbar);
	createTrackbar( "Hmax", "dst", &slider21, 180, ontrackbar);
	createTrackbar( "Smax", "dst", &slider22, 255, ontrackbar);
	createTrackbar( "Vmax", "dst", &slider23, 255, ontrackbar);

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
    		
    		inRange(hsv, Scalar(slider11, slider12, slider13), Scalar(slider21, slider22, slider23), bw);

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
    		int xpos = objectBoundingRectangle1.x+objectBoundingRectangle1.width/2;
			int ypos = objectBoundingRectangle1.y+objectBoundingRectangle1.height/2;
			circle(frame,Point(xpos,ypos),5,Scalar(0,255,0),2);
			rectangle(frame, objectBoundingRectangle1.tl(), objectBoundingRectangle1.br(),Scalar(0,255,0), 2, 8, 0);

			xpos = objectBoundingRectangle2.x+objectBoundingRectangle2.width/2;
			ypos = objectBoundingRectangle2.y+objectBoundingRectangle2.height/2;
			circle(frame,Point(xpos,ypos),5,Scalar(0,0,255),2);
			rectangle(frame, objectBoundingRectangle2.tl(), objectBoundingRectangle2.br(),Scalar(0,0,255), 2, 8, 0);

			imshow("drw", drawing);
			imshow("src", frame);

			switch(waitKey(20)){

			case 27: //'esc' key has been pressed, exit program.
				return 0;
			case 112: //'p' has been pressed. this will pause/resume the code.
				pause = !pause;
				if(pause == true){ 
					cout<<"Code paused, press 'p' again to resume"<<endl;
					while (pause == true){
						//stay in this loop until 
						switch (waitKey()){
							//a switch statement inside a switch statement? Mind blown.
						case 112: 
							//change pause back to false
							pause = false;
							cout<<"Code Resumed"<<endl;
							break;
						}
					}
				}
			}
		}

		capture.release();
	}

	return 0;
}
