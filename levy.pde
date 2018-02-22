float P;
float H;
float A;
float B;
float X,Y,xC,yC,xC2,yC2,s;

void setup(){
  size(1000,1000);
  background(255);
  stroke(0);
  smooth();
  P = 12;
  H = (float)Math.pow(2,P/2);
  A = (float)H*cos(P*PI/4);
  B = (float)H*sin(P*PI/4);
  X = 1;
  Y = 1;
  
  //the example program draws this line from 0,0 to A+B,A-B to start with, before it goes into looping (i add height/2 and width/2 so that it starts in the center of the window)
  xC = 0;
  xC2= A + B;
  yC = 0;
  yC2 = A - B;
  line(xC+width/2,yC+height/2,xC2+width/2,yC2+height/2);
  xC = xC2;
  yC = yC2;
  xC2 = A + B;
  yC2 = A - B;
  line(xC+width/2,yC+height/2,xC2+width/2,yC2+height/2);
  xC = xC2;
  yC = yC2;
  
  for(float i = 2; i < Math.pow(2,P-1);i++){
     float m = i;
     s = 1;
     println("xC= ",xC);
     println("yC= ",yC);
     println("xC2= ",xC2);
     println("yC2= ",yC2);
     if(m % 2 == 1){ 
       s += 1;
     } 
    checkMod(m);
    if(s % 4 == 0){ 
     X++;
     }
    if(s % 4 == 1){ 
     Y++;
     }
    if(s % 4 == 2){ 
     X--;
     }
    if(s % 4 == 3){ 
     Y--;
     }     
     
    println("X = ",X);
    println("Y = ",Y);
    
    xC2 = A * X + B * Y;
    yC2 = A * Y - B * X;
    
    line(xC+width/2,yC+height/2,xC2+width/2,yC2+height/2);
    xC = xC2;
    yC = yC2;
  }
}

void draw(){
}

void checkMod(float m){
   m = m/2;
   if(m>1){
     checkMod(m);
   }
 }
