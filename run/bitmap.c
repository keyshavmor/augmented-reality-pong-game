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
#include "bitmap.h"
#include "defines.h"


/*
 * True if system is little-endian, false otherwise.
 */

void printCoords(int x, int y) {
	printf("Coordinates: %i / %i\n", x,y);
	return;
}

void colPrint(col_t *col) {
	printf("r: %f, g: %f, b: %f\n", col->r, col->g, col->b);
}

void pix_print(pix_t *pix) {
	printf("r: %i, g: %i, b: %i\n", pix->r, pix->g, pix->b);
}

pix_t col2Pix(col_t *col) {
	pix_t c;
	c.r = (uint8_t) max(0.0, min(255.0, (col->r * 255.0)));
	c.g = (uint8_t) max(0.0, min(255.0, (col->g * 255.0)));
	c.b = (uint8_t) max(0.0, min(255.0, (col->b * 255.0)));

	return c;
}


int isLE() {
	int one = 1;
	char *ptr = (char *) &one;
	return *ptr == 1;
}

/*
 * Converts the 16-bit value to little-endian representation.
 */
uint16_t toLE16(uint16_t value) {
	return isLE() ?
			value : ((value & 0x00ff) << 8) | ((value & 0xff00) >> 8);
}

/*
 * Converts the 32-bit value to little-endian representation.
 */
uint32_t toLE32(uint32_t value) {
	return isLE() ?
			value :
			((value & 0x000000ff) << 24) | ((value & 0x0000ff00) << 8)
					| ((value & 0x00ff0000) >> 8) | ((value & 0xff000000) >> 24);
}

bmpHeader buildBMPHeader(int width, int height) {
	/* calc size in bytes of a single line including padding */
	int line_size = width * BITS_PER_PIXEL / 8
			+ (4 - ((width * BITS_PER_PIXEL / 8) % 4)) % 4;

	/* create header structure */
	bmpHeader head = { toLE16(MAGIC_BM), toLE32(
			sizeof(bmpHeader) + line_size * height), toLE32(0), toLE32(
			sizeof(bmpHeader)), { toLE32(sizeof(ibHeader)), toLE16(
			width), toLE16(height), toLE16(1), toLE16(BITS_PER_PIXEL) } };

	/* write data to given stream */
	//fwrite(&head, sizeof(bmpHeader), 1, stream);
	return head;
}

int buildImageFile(const char* filename, pix_t *img, int height, int width){
	if (img){
		FILE *file = fopen(filename, "wb");
		if (file) {
			bmpHeader head = buildBMPHeader(width, height);
			fwrite(&head, sizeof(bmpHeader), 1, file);
			fwrite(img, 3, width * height, file);
			fclose(file);
			return EXIT_SUCCESS;
		}
	}
	return EXIT_FAILURE;
}


void drawBall(pix_t *img, int xPos, int yPos) {
	int centerPos = yPos * WIDTH + xPos;
	printf("x: %i y: %i\n", xPos, yPos);
	for (int j = centerPos-RADIUS*WIDTH; j <= centerPos+RADIUS*WIDTH; j = j + WIDTH) {
		printf("j: %i\n",j);
		for(int i = j-RADIUS; i <= j+RADIUS; i++) {
			//printf("i: %i\n",i);
			img[i].r = 180;
			img[i].b = 0;
			img[i].g = 0;
			//printf("i: %i\n",i);

		}
	}
	
}




