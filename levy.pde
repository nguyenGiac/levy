PVector pos,vel,center,old;
int segments,scale,s;


void setup(){
  size(1000,1000);
  background(255);
  stroke(0);
  smooth();
  scale = 9;
  segments = (int)Math.pow(4,scale-1);
  center = new PVector(width/2,height/2);
  pos = new PVector(width/4,height/2);
  stroke(0);
  fill(0);
  for(int i = 0; i < segments; i++){
    s = countSetBits(i);
    old = pos.copy();
    if(s % 4 == 0){ 
        vel = new PVector(2,0);
        println(vel);
        pos.add(vel);
        line(old.x,old.y,pos.x,pos.y);
     }
    if(s % 4 == 1){ 
        vel = new PVector(0,2);
        pos.add(vel);
        println(vel);
        line(old.x,old.y,pos.x,pos.y);
      }
    if(s % 4 == 2){ 
       vel = new PVector(-2,0);
       pos.add(vel);
       println(vel);
       line(old.x,old.y,pos.x,pos.y);
     }
    if(s % 4 == 3){ 
       vel = new PVector(0,-2);
       pos.add(vel);
       line(old.x,old.y,pos.x,pos.y);
     }     
  }
  saveFrame("levy/###.jpg");
}

// recursive function to count set bits
int countSetBits(int n)
{
    // base case
    if (n == 0){
        return 0;
    } else {
       // if last bit set add 1 else add 0
       return (n & 1) + countSetBits(n >> 1);
    }
}
 

void draw(){
  noLoop();
}
