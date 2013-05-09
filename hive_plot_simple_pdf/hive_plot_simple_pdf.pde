//import the processing.pdf library to expose processing's PDF rendering
import processing.pdf.*;

//set up the size of the canvas and the background color
size(512,512);
background(255,255,255);

//variables that determine the center of the plot on the canvas
float origin_x = 256;
float origin_y = 256;

//varaible to set the plot size in pixels
float plot_size = 500;

//variables that determine the length of the spokes in the plot (0-100)
float pos = 50;
float zeros = 20;
float neg = 30;

//transform the spoke variables to fit the plot size
pos = pos/100*plot_size/2;
zeros = zeros/100*plot_size/2;
neg = neg/100*plot_size/2;

//build an ellipse for the 50% line
fill(128,128,128);
noStroke();
ellipse(origin_x, origin_y, plot_size*0.5, plot_size*0.5);

//build the positive point and line
float pos_x = cos(radians(330))*pos + origin_x;
float pos_y = sin(radians(330))*pos + origin_y;
fill(255,0,0);
stroke(255,0,0);
strokeWeight(10);
line(origin_x, origin_y, pos_x, pos_y);
ellipse(pos_x, pos_y, 20, 20);

//build the zeros point and line
float zeros_x = cos(radians(90))*zeros + origin_x;
float zeros_y = sin(radians(90))*zeros + origin_y;
fill(200,200,200);
stroke(200,200,200);
line(origin_x, origin_y, zeros_x, zeros_y);
ellipse(zeros_x, zeros_y, 20, 20);

//build the negative point and line
float neg_x = cos(radians(210))*neg + origin_x;
float neg_y = sin(radians(210))*neg + origin_y;
fill(0,0,255);
stroke(0,0,255);
line(origin_x, origin_y, neg_x, neg_y);
ellipse(neg_x, neg_y, 20, 20);

//build the center dot to cover the converging lines
fill(0,0,0);
stroke(0,0,0);
ellipse(origin_x, origin_y, 5, 5);

//exit the renderer
exit();






