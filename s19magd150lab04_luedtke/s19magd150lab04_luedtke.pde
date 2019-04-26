float a;
float angle =1;
int NUM_LINES = 450;
float v1 = 0.6;
float v2;
boolean increment = false;
float fator =.00003;
int pressed = 0;
int pressedState = 0;

void setup(){
  println("Whirlpool");
  println("Hold left and right arrow keys to change speed");
  size(600,600);
  v1 = random(0.6)+0.3;
}

void draw(){
  background(37, 34, 106);
  angle+= .03;
  stroke(30, 150, 200);
  translate(width/3, height/3);
 rotate(sin(angle));
  for(int i=2; i < NUM_LINES; i++){
     strokeWeight(5);
  point(x(a+i), y(a+i));
    point(x2(a+i), y2(a+i));
    strokeWeight(2);
    line(x(a+i),y(a+i),x2(a+i),y2(a+i));}
   a += 0.007;
  if(increment)v1+=fator;
}

void mousePressed(){
v1 = random(0.9)+0.2;
}
void keyReleased(){
  increment = false;
}
void keyPressed(){
   if(key == ' '){
    v1 =random(0.8)+0.2;
  }
}
float x(float a){
return sin(a/5)*80 + cos(a/v1)*80;
}
float y(float a){
return cos(a/5)*80 + sin(a/v1)*80;
}
float x2(float a){
return sin(a/5)*80 + cos(a/v1)*80;
}
float y2(float a){
return cos(a/5)*80 + sin(a/v1)*80;
}
