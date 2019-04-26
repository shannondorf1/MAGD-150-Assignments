int rectX, rectY;
int circleX, circleY;
int rectSize = 40;
int circleSize = 45;
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;

void setup(){
  size(500, 600);
  rectColor = color(#FF0004);
  rectHighlight = color(#7D0002);
  circleColor = color(200);
  circleHighlight = color(150);
  baseColor = color(50);
  currentColor = baseColor;
  circleX = width/3+circleSize/3+7;
  circleY = height/2;
  rectX = width/4-rectSize-7;
  rectY = height/2-rectSize/2;
  ellipseMode(CENTER);
}

void draw(){
  update(mouseX, mouseY);
  background(currentColor);
  
  stroke(220);
  fill(20);
  rect(50, 250, 200, 100);
  
  if(rectOver){
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(200);
  rect(rectX, rectY, rectSize, rectSize);
  fill(200);
  text("Stop", 80, 305);
  
  if(circleOver){
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  stroke(10);
  ellipse(circleX, circleY, circleSize, circleSize);
  fill(100);
  text("Play", 172, 305);
}

void update(int x, int y){
  if (overCircle(circleX, circleY, circleSize)){
    circleOver = true;
    rectOver = false;
  } else if (overRect(rectX, rectY, rectSize, rectSize)){
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}

void mousePressed(){
  if (circleOver){
    currentColor = circleColor;
  }
  if (rectOver){
    currentColor = rectColor;
  }
}

boolean overRect(int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width &&
      mouseY >= y && mouseY <= y+height){
    return true;
      } else {
        return false;
      }
}

boolean overCircle(int x, int y, int diameter){
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/3 ){
    return true;
  } else {
    return false;
  }
}
  
    
