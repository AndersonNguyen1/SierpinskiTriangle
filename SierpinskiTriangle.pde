int screenSizeX = 500;
int screenSizeY = 500;

public void setup()
{
	size(screenSizeX, screenSizeY);
	background(0);
}

public void mouseDragged()//optional
{

}

public void sierpinskiTriangle(int x, int y, int len) 
{
	if(len > 20)
	{
		sierpinskiTriangle(x, y, len/2);
		sierpinskiTriangle(x + len/2, y, len/2);
		sierpinskiTriangle(x + len/4, y - len/2, len/2);
	}
	else
		triangle(x, y, x + len, y, x + len/2, y - len);
}	

public void draw()
{
	sierpinskiTriangle(0, 500, screenSizeY);
	//sierpinskiTriangle(screenSizeX/2, screenSizeY/2, screenSizeY/2);
	sierpinskiTriangle(screenSizeX/4, screenSizeY/2, screenSizeY/2);
}

