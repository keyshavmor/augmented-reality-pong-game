#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <limits.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <math.h>
#include <string.h>

#include "defines.h"
#include "bitmap.h"

int ballPosition[2];
int ballDirection[2];

void calculateReflexionRight() {
	ballPosition[0] = BORDER_RIGHT;
	ballPosition[1] = (int)(((double)(BORDER_RIGHT - ballPosition[0]) / (double) ballDirection[0]) * ballDirection[1]) + ballPosition[1];
	ballDirection[0] = -ballDirection[0];
	ballDirection[1] = ballDirection[1];
	
}

void calculateReflexionLeft() {
	ballPosition[0] = BORDER_LEFT;
	ballPosition[1] = (int)(((double)(ballPosition[0]) / (double) ballDirection[0]) * ballDirection[1]) + ballPosition[1];
	ballDirection[0] = -ballDirection[0];
	ballDirection[1] = ballDirection[1];
	
}

void calculateReflexionTop() {
	ballPosition[0] = (int)(((double)(BORDER_TOP- ballPosition[1]) / (double) ballDirection[1]) * ballDirection[0]) + ballPosition[0];
	ballPosition[1] = BORDER_TOP;
	ballDirection[0] = ballDirection[0];
	ballDirection[1] = -ballDirection[1];
	
}

void calculateReflexionBottom() {
	ballPosition[0] = ballPosition[0] - (int)(((double)(ballPosition[1]) / (double) ballDirection[1]) * ballDirection[0]);
	ballPosition[1] = BORDER_BOTTOM;
	ballDirection[0] = ballDirection[0];
	ballDirection[1] = -ballDirection[1];
	
}

void calculateBallPosition(int ballPosition[]) {
	if (ballPosition[0] + ballDirection[0] >= BORDER_RIGHT && ballPosition[1] + ballDirection[1] >= BORDER_TOP) {
		// top right
		if (ballPosition[0] + ballDirection[0] - BORDER_RIGHT >= ballPosition[1] + ballDirection[1] - BORDER_TOP) {
			calculateReflexionRight();
			return;
		}
		else {
			calculateReflexionTop();
			return;
		}
	}

	if (ballPosition[0] + ballDirection[0] >= BORDER_RIGHT && ballPosition[1] + ballDirection[1] <= BORDER_BOTTOM) {
		// bottom right
		if (ballPosition[0] + ballDirection[0] - BORDER_RIGHT >= BORDER_BOTTOM - ballPosition[1] + ballDirection[1]) {
			calculateReflexionRight();
			return;
		}
		else {
			calculateReflexionBottom();
			return;
		}
	}
	if (ballPosition[0] + ballDirection[0] <= BORDER_LEFT && ballPosition[1] + ballDirection[1] >= BORDER_TOP) {
		// top left
		if (BORDER_LEFT - ballPosition[0] + ballDirection[0] >= ballPosition[1] + ballDirection[1] - BORDER_TOP) {
			calculateReflexionLeft();
			return;
		}
		else {
			calculateReflexionTop();
			return;
		}	
	}

	if (ballPosition[0] + ballDirection[0] <= BORDER_LEFT && ballPosition[1] + ballDirection[1] <= BORDER_BOTTOM) {
		// bottom left
		if (BORDER_LEFT - ballPosition[0] + ballDirection[0] >= BORDER_BOTTOM - ballPosition[1] + ballDirection[1]) {
			calculateReflexionLeft();
			return;
		}
		else {
			calculateReflexionBottom();
			return;
		}
	}

	if (ballPosition[0] + ballDirection[0] >= BORDER_RIGHT) {
		// right out calculate collision
		calculateReflexionRight();
		return;
	}
	if (ballPosition[0] + ballDirection[0] <= BORDER_LEFT) {
		// left out calculate collision
		calculateReflexionLeft();
		return;
	}
	if (ballPosition[1] + ballDirection[1] >= BORDER_TOP) {
		// top out calculate collision
		calculateReflexionTop();
		return;
	}
	if (ballPosition[1] + ballDirection[1] <= BORDER_BOTTOM) {
		// bottom out calculate collision
		calculateReflexionBottom();
		return;
	}
	ballPosition[0] = ballPosition[0] + ballDirection[0];
	ballPosition[1] = ballPosition[1] + ballDirection[1];
	return;
}






int main() {

	
	pix_t *img = (pix_t*) calloc(HEIGHT * WIDTH, sizeof(pix_t));
	memset(img, 128, HEIGHT* WIDTH*3);
	
	ballPosition[0] = 20;
	ballPosition[1] = 20;
	ballDirection[0] = 20;
	ballDirection[1] = 20;
	printf("Ball initiiert...\n");
	drawBall(img, ballPosition[0], ballPosition[1]);
	buildImageFile("image0.bmp", img,  HEIGHT, WIDTH);
	printf("First Picture generated....\n");
	char filename[15];
	for (int i = 1; i <= 100; i++) {
		//printf("calculate ballPosition...\n");
		calculateBallPosition(ballPosition);
		//printf("calculation succeded\n");
		//printf("drawBall with position x: %i + y: %i\n", ballPosition[0], ballPosition[1]);
		//printCoords(ballPosition[0], ballPosition[1]);
		memset(img, 128, HEIGHT*WIDTH*3);
		drawBall(img, ballPosition[0], ballPosition[1]);
		//printf("drawBall succeded\n");
		//printf("Building new Filename No. %i\n", i);
		sprintf(filename, "image%i.bmp", i);
		//printf("Building succeded\n");
		buildImageFile(filename, img,  HEIGHT, WIDTH);
	}

	return 0;
}