PImage img;

public void setup()
{
	size(500,500);
	background(0);
	img = loadImage("Elephant.png");
}
public void draw()
{
	fill(0,(int)(Math.random()*255),0);
	stroke(0,(int)(Math.random()*255),0);
	for(int m = 0; m<100;m++)
	{
		ellipse((int)(Math.random()*500),(int)(Math.random()*500),25,25);
		m++;
	}
	myFractal(251,250,5,5);
	myFractal(249,250,5,5);
	myFractal(251,150,5,5);
	myFractal(249,150,5,5);
	myFractal(251,350,5,5);
	myFractal(249,350,5,5);
	myFractal(251,50,5,5);
	myFractal(249,50,5,5);
	myFractal(251,450,5,5);
	myFractal(249,450,5,5);
}
public void myFractal(int x,int y,int wSiz, int hSiz)
{
	imageMode(CENTER);
	image(img,x,y,wSiz,hSiz);
	if(wSiz <= 150)
	{
		if(x>250)
			myFractal(x + wSiz*2,y,wSiz*3,hSiz*3);
		if(x<250)
			myFractal(x - wSiz*2,y,wSiz*3,hSiz*3);
	}
}

