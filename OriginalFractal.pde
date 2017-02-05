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
	int strokeColor=(int)(Math.random()*255);
	stroke(strokeColor);
	int num = (int)(Math.random()*600);
	ellipse(x, y, rad, rad);
	if(rad >= num)
	{
		fractal(x+rad/4, y, rad/2);
		fractal(x-rad/4, y, rad/2);
		fractal(x, y+rad/4, rad/2);
		fractal(x, y-rad/4, rad/2);
		strokeColor-=20;
	}
}
