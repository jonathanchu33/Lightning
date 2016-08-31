int startX = 150;
int startY = 150;
int endX;
int endY;
int lightningQuadrant = (int)(Math.random()*4);

void setup()
{
	size(300,300);
	frameRate(20);
	background(0,0,0);
	strokeWeight(3);
}
void draw()
{
	background(0,0,0);
	strokeWeight(3);
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	while(startX<300 && startX>0 && startY<300 && startY>0)
	{
		if(lightningQuadrant < 1)
		{
			endX = startX + (int)(Math.random()*10);
			endY = startY + (int)(Math.random()*19-9);
		}
		else if(lightningQuadrant < 2)
		{
			endX = startX + (int)(Math.random()*19-9);
			endY = startY - (int)(Math.random()*10);
		}
		else if(lightningQuadrant < 3)
		{
			endX = startX - (int)(Math.random()*10);
			endY = startY + (int)(Math.random()*19-9);
		}
		else
		{
			endX = startX + (int)(Math.random()*19-9);
			endY = startY + (int)(Math.random()*10);
		}
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
	rubiksCube();
}
void mousePressed()
{
	lightningQuadrant = (int)(Math.random()*4);
	startX = 150;
	startY = 150;
	endX = startX;
	endY = startY;
}

int cubeX = 150;
int cubeY = 150;
int sideLength = 50;

void rubiksCube()
{
	//setup
	strokeWeight(1);
	stroke(0);
	
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