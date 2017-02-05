public void setup()
{
	size(600, 600);
}

public void draw()
{
	background(0);
	fractal(mouseX, mouseY, 600);
}

public void fractal(int x, int y, int rad)
{
	noFill();
	int strokeColor1=(int)(Math.random()*255);
	int strokeColor2=(int)(Math.random()*255);
	int strokeColor3=(int)(Math.random()*255);
	stroke(strokeColor1,strokeColor2,strokeColor3);
	int num = (int)(Math.random()*600);
	ellipse(x, y, rad, rad);
	if(rad >= num)
	{
		fractal(x+rad/4, y, rad/2);
		fractal(x-rad/4, y, rad/2);
		fractal(x, y+rad/4, rad/2);
		fractal(x, y-rad/4, rad/2);
		fractal(x+rad/4-44, y+rad/4-44, rad/2);
		fractal(x-rad/4+44, y+rad/4-44, rad/2);
		fractal(x+rad/4-44, y-rad/4+44, rad/2);
		fractal(x+rad/4-44, y+rad/4+44, rad/2);
		strokeColor1-=20;
		strokeColor2-=20;
		strokeColor3-=20;
	}
}
