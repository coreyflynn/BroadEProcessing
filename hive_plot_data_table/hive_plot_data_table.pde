//set up the size of the canvas and the background color
size(512,512);
background(255,255,255);

//read the data in data.txt into a Table object
Table table = loadTable("data.txt","header,tsv");
int plot_num = 0;

for (TableRow row : table.rows()){
  //  increment the plot number
  plot_num += 1;
  
  //variables that determine the points in the plot
  float pos = row.getFloat("pos")/100*64;
  float zeros = row.getFloat("zeros")/100*64;
  float neg = row.getFloat("neg")/100*64;
  
  //variables that determine the center of the plot
  float origin_x = 256;
  float origin_y = 128*plot_num;
  
  //build a circle for the 50% line
  fill(128,128,128);
  noStroke();
  ellipse(origin_x, origin_y, 50, 50);
  
  //build the positive point and line
  float pos_x = cos(radians(330))*pos + origin_x;
  float pos_y = sin(radians(330))*pos + origin_y;
  fill(255,0,0);
  stroke(255,0,0);
  strokeWeight(5);
  line(origin_x, origin_y, pos_x, pos_y);
  ellipse(pos_x, pos_y, 10, 10);
  
  //build the zeros point and line
  float zeros_x = cos(radians(90))*zeros + origin_x;
  float zeros_y = sin(radians(90))*zeros + origin_y;
  fill(200,200,200);
  stroke(200,200,200);
  line(origin_x, origin_y, zeros_x, zeros_y);
  ellipse(zeros_x, zeros_y, 10, 10);
  
  //build the negative point and line
  float neg_x = cos(radians(210))*neg + origin_x;
  float neg_y = sin(radians(210))*neg + origin_y;
  fill(0,0,255);
  stroke(0,0,255);
  line(origin_x, origin_y, neg_x, neg_y);
  ellipse(neg_x, neg_y, 10, 10);
  
  //build the center dot to cover the convergin lines
  fill(0,0,0);
  stroke(0,0,0);
  ellipse(origin_x, origin_y, 5, 5);
}

