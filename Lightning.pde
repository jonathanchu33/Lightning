int startX = 150;
int startY = 150;
int endX = 0;
int endY = 150;
int lightningQuadrant = (int)(Math.random()*4+1);

void setup()
{
  size(300,300);
  background(255,0,0);
  strokeWeight(5);
}
void draw()
{
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	if (lightningQuadrant == 1)
	{

	}
	if (lightningQuadrant == 2)
	{

	}
	if (lightningQuadrant == 3)
	{

	}
	if (lightningQuadrant == 4)
	{

	}
	rubiksCube();
}
void mousePressed()
{
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}

int cubeX = 150;
int cubeY = 150;
int sideLength = 150;

void rubiksCube()
{
	//white Side
	fill(255);
	quad(cubeX,cubeY,cubeX,cubeY+sideLength,cubeX-sideLength*5/6,cubeY+sideLength*2/3,cubeX-sideLength*5/6,cubeY-sideLength/3);
	line(cubeX-sideLength*5/18,cubeY-sideLength/9,cubeX-sideLength*5/18,cubeY+sideLength*8/9);
	line(cubeX-sideLength*5/9,cubeY-sideLength*2/9,cubeX-sideLength*5/9,cubeY+sideLength*7/9);
	line(cubeX-sideLength*5/6,cubeY,cubeX,cubeY+sideLength/3);
	line(cubeX-sideLength*5/6,cubeY+sideLength/3,cubeX,cubeY+sideLength*2/3);

	//green Side
	fill(0,255,0);
	quad(cubeX,cubeY,cubeX,cubeY+sideLength,cubeX+sideLength*5/6,cubeY+sideLength*2/3,cubeX+sideLength*5/6,cubeY-sideLength/3);
	line(cubeX+sideLength*5/18,cubeY-sideLength/9,cubeX+sideLength*5/18,cubeY+sideLength*8/9);
	line(cubeX+sideLength*5/9,cubeY-sideLength*2/9,cubeX+sideLength*5/9,cubeY+sideLength*7/9);
	line(cubeX+sideLength*5/6,cubeY,cubeX,cubeY+sideLength/3);
	line(cubeX+sideLength*5/6,cubeY+sideLength/3,cubeX,cubeY+sideLength*2/3);
	
	//red Side
	fill(255,0,0);
	quad(cubeX,cubeY,cubeX-sideLength*5/6,cubeY-sideLength/3,cubeX,cubeY-sideLength*2/3,cubeX+sideLength*5/6,cubeY-sideLength/3);
	line(cubeX-sideLength*5/18,cubeY-sideLength/9,cubeX+sideLength*5/9,cubeY-sideLength*4/9);
	line(cubeX-sideLength*5/9,cubeY-sideLength*2/9,cubeX+sideLength*5/18,cubeY-sideLength*5/9);
	line(cubeX+sideLength*5/18,cubeY-sideLength/9,cubeX-sideLength*5/9,cubeY-sideLength*4/9);
	line(cubeX+sideLength*5/9,cubeY-sideLength*2/9,cubeX-sideLength*5/18,cubeY-sideLength*5/9);
}