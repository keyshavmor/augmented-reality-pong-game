#include <opencv/cv.hpp>
#include <opencv/highgui.h>
#include <iostream>
#include <functional>
#include <string>

using namespace std;
using namespace cv;

//the following defines are just for aesthetic purposes
//they allow us to color text in the terminal
#define KRED  "\x1B[31m"
#define KGRN  "\x1B[32m"
#define KWHT  "\x1B[37m"

//function that finds the index of the biggest contour in a collection of them
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

//implementation of the basic game mechanics and drawing of pads, ball and scores
void pong(int left, int right, Mat& pongframe){
	static int xpos 	 = pongframe.cols/2;
	static int ypos 	 = pongframe.rows/2;
	static int xvelocity = 15;
	static int yvelocity = 15;

	static int leftScore  = 0;
	static int rightScore = 0;

	if((xpos + xvelocity >=  pongframe.cols) || (xpos + xvelocity <= 0)){
		(xpos + xvelocity <= 0) ? rightScore++ : leftScore++;
		(xpos + xvelocity <= 0) ? printf("%sGREEN scored!\n", KGRN) : printf("%sRED scored!\n", KRED);
		
		xvelocity = -xvelocity;
		xpos = pongframe.cols/2;
		ypos = pongframe.rows/2;
	}
	if((ypos + yvelocity >=  pongframe.rows) || (ypos + yvelocity <= 0))
		yvelocity = -yvelocity;

	if(((xpos<50)&&(ypos<left+50)&&(ypos>left-50)) || ((xpos>pongframe.cols-50)&&(ypos<right+50)&&(ypos>right-50))){
		printf("%sCOLLISION\n", KWHT);
		xvelocity = -xvelocity;
	}

	xpos += xvelocity;
	ypos += yvelocity;
	
	circle(pongframe,Point(xpos,ypos),10,Scalar(255,255,255),-1);

	rectangle(pongframe, Point(0,left-50), Point(30,left+50),Scalar(0,0,255), -1, 8, 0);
	rectangle(pongframe, Point(pongframe.cols-30,right-50), Point(pongframe.cols,right+50),Scalar(0,255,0), -1, 8, 0);

	putText(pongframe, to_string(leftScore), Point(100,50), 
      FONT_HERSHEY_SIMPLEX, 2, Scalar(0,0,255), 2, CV_AA);
    putText(pongframe, to_string(rightScore), Point(pongframe.cols-100,50), 
      FONT_HERSHEY_SIMPLEX, 2, Scalar(0,255,0), 2, CV_AA);
}

int main(int argc, char const *argv[])
{
	//we are capturing the data from the webcam
	VideoCapture capture(0);

	if(!capture.isOpened()){
		cout<<"ERROR ACQUIRING VIDEO FEED\n";
		getchar();
		return -1;
	}
	
	Mat hsv, bw;
	int s1 = 0, s2 = 0;

	vector<vector<Point> > 	contours;
	vector<Vec4i> 			hierarchy;

	//parameters found by tuning with sliders until satisfactory results were seen
	int hueMin 			= 0;
	int saturationMin 	= 60;
	int valueMin 		= 70;

	int hueMax 			= 180;
	int saturationMax 	= 255;
	int valueMax 		= 170;

	Rect objectBoundingRectangle1 = Rect(0,0,0,0);
	Rect objectBoundingRectangle2 = Rect(0,0,0,0);
	vector<Point> contours_poly1;
	vector<Point> contours_poly2;

	while(1){
		Mat frame;
		capture.read(frame);
		//the application of blur eliminates a big part of noisy errors
		blur( frame, frame, Size(3,3) );
		//HSV (Hue Saturation Value) colorspace is more suitable for color detection than BGR (Blue Red Green)
		cvtColor(frame, hsv, CV_BGR2HSV);
		//Here we apply the range thresholding with the tuned parameters
		//We get a binary image, where white pixels are those within our previously defined range. 
		inRange(hsv, Scalar(hueMin, saturationMin, valueMin), Scalar(hueMax, saturationMax, valueMax), bw);
		//contours give an idea of the objects we detected
		//we are expecting that the 2 biggest contours correspond to the 2 hands we are trying to track 
	    findContours( bw, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );

	    if(!contours.size())
	    	printf("no contour found\n");
	    else {
	    	s1 = findBiggestContour(contours, -1);
	    }
	    if(!contours.size())
	    	printf("no second contour found\n");
	    else s2 = findBiggestContour(contours, s1);

	    //If the 2 hands are successfully detected, their contour indices are stored in s1 and s2

	    //the following commented out chunk shows the 2 biggest contours we detected as a binary image
	    // Mat drawing = Mat::zeros( frame.size(), CV_8UC1 );
	    // drawContours( drawing, contours, s1, Scalar(255), -1, 8, hierarchy, 0, Point() );
	    // drawContours( drawing, contours, s2, Scalar(255), -1, 8, hierarchy, 0, Point() );
	    // imshow("drawing", drawing);

	    //approximate the rough contours with polygons to find bounding box more easily
		approxPolyDP( Mat(contours[s1]), contours_poly1, 3, true );
		approxPolyDP( Mat(contours[s2]), contours_poly2, 3, true );

		objectBoundingRectangle1 = boundingRect( Mat(contours_poly1) );
		objectBoundingRectangle2 = boundingRect( Mat(contours_poly2) );
		int xpos1 = objectBoundingRectangle1.x+objectBoundingRectangle1.width/2;
		int ypos1 = objectBoundingRectangle1.y+objectBoundingRectangle1.height/2;
		int xpos2 = objectBoundingRectangle2.x+objectBoundingRectangle2.width/2;
		int ypos2 = objectBoundingRectangle2.y+objectBoundingRectangle2.height/2;

		bool isLeft = (xpos2 < xpos1) ? true : false; 

		//our 2 players bounding rectangles and their centre: the red one on the left and the green one on the right
		circle(frame,Point(xpos1,ypos1),5,(isLeft ? Scalar(0,255,0) : Scalar(0,0,255)),2);
		rectangle(frame, objectBoundingRectangle1.tl(), objectBoundingRectangle1.br(),(isLeft ? Scalar(0,255,0) : Scalar(0,0,255)), 2, 8, 0);


		circle(frame,Point(xpos2,ypos2),5,(!isLeft ? Scalar(0,255,0) : Scalar(0,0,255)),2);
		rectangle(frame, objectBoundingRectangle2.tl(), objectBoundingRectangle2.br(),(!isLeft ? Scalar(0,255,0) : Scalar(0,0,255)), 2, 8, 0);

		int yposleft  = (xpos1 < xpos2) ? ypos1 : ypos2; 
		int yposright = (xpos1 < xpos2) ? ypos2 : ypos1;

		imshow("video", frame);

		Mat pongframe = frame;

		for(int y=0;y<pongframe.rows;y++)
		    for(int x=0;x<pongframe.cols;x++)
		        pongframe.at<Vec3b>(Point(x,y)) = Vec3b(0,0,0);

		//run the simple game engine to get next game state
		pong(yposleft, yposright, pongframe);

		//show the pong game
		imshow("pong", pongframe);
		

		switch(waitKey(20)){
		case 27: //'esc' key has been pressed, exit program
			return 0;
		}
	}

	return 0;
}
