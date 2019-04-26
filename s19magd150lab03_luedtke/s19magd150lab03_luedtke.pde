void setup(){
  background(150);
  size(400, 400);
  frameRate(20);
  millis();
  println("start: ");
}

void draw(){
  float a;
  a = 20;
  float b = 40;
  float c = a + b;
  beginShape(POINTS);
  vertex(a,20);
  vertex(b,20);
  vertex(c,20);
  endShape();
  println(a);
  println(c);
  float d = 340;
  float e = 360;
  float f = 380;
  beginShape(POINTS);
  vertex(d,20);
  vertex(e,20);
  vertex(f,20);
  endShape();
  float g = 70.0;
  float h = 90.0;
  float i = lerp(g, h, .7);
  float j = lerp(g, h, .8);
  float k = lerp(g, h, .9);
  beginShape(POINTS);
  vertex(g, 120);
  vertex(h, 120);
  vertex(i, 120);
  vertex(j, 120);
  vertex(k, 120);
  endShape();
  
  
  
  constrain(mouseX, 300, 350);
  float x = map(mouseX, 0, width, 60, 160);
  ellipse(x, 75, 50, 50);

  
  println( "frames:" + frameCount + ", milliseconds:" + millis() + ", frameRate: " + frameRate);
  
  if (frameCount % 20 == 0) {
    fill(250, 120, 0);
    ellipse(width / 3.0, height / 3.0, 100, 100);
    millis();
}
}
