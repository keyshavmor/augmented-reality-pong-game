#ifndef BITMAP_H
#define BITMAP_H

#include <stdio.h>
#include <stdint.h>
//difine in main later


#define min(X,Y) ((X) < (Y) ? (X) : (Y))
#define max(X,Y) ((X) > (Y) ? (X) : (Y))


#pragma pack(1)

typedef struct {
	uint32_t header_size;
	uint16_t width;
	uint16_t height;
	uint16_t planes;
	uint16_t bits_per_pixel;
} ibHeader;

typedef struct {
	uint16_t magic;
	uint32_t file_size;
	uint32_t reserved;
	uint32_t data_offset;
	ibHeader dib_header;
} bmpHeader;

#pragma pack()

typedef struct {
	uint8_t b;
	uint8_t g;
	uint8_t r;
} pix_t;

typedef struct {
	float r;
	float g;
	float b;
} col_t;

void printCoords(int x, int y);
void colPrint(col_t *col);
void pix_print(pix_t *pix);
pix_t col2Pix(col_t *col);
int isLE();
uint16_t toLE16(uint16_t value);
uint32_t toLE32(uint32_t value);
bmpHeader buildBMPHeader(int width, int height);
void drawBall(pix_t* img, int xPos, int yPos);
int buildImageFile(const char* filename, pix_t* img, int height, int width);
#endif // BITMAP_H