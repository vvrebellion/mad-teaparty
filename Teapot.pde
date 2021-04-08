class Teapot {
  
  float angle = 0;
  float variant;
  float x,y,z;
  Teapot(){ 

  }
    void move(){
      randomSeed(3); //generate same "random""results everytime
      variant = random(-1,1);
      //teapot will rotate around all axis, 
      //thus moving around the screen
      rotateX(angle + variant);
      rotateY(angle * 1.3 + variant);
      rotateZ(angle * 0.7 + variant);
      
      angle += 0.03;
    
  }
  
  //shape of 3d object aka Teapot
  void display() {
    translate(width/2, height/2, -380);
    scale(10);
    shape(teapot, 0, 0);  
  }
  
}
