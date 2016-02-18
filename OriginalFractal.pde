public void setup() 
{
	size(800, 800);
}
public void draw() 
{
	background(0);
	fractal(400,400, 400);
}
public void fractal(int x, int y, int len) 
{
	if(len<20){
		ellipse(x, y, len, len);
	}
	else{
		stroke(255, len+20, 255);
		noFill();
		fractal(x+50+len/4, y, len/2);
		fractal(x, y+50+len/4, len/2);
		fractal(x-50-len/4, y, len/2);
		fractal(x, y-50-len/4, len/2);
		ellipse(x, y, len, len);


	}
}
