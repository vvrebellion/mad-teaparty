import processing.sound.*;
SoundFile soundfile;
float d = 0;
PShape teapot;
Teapot[] teapots = new Teapot[3];


void setup(){
  
  background(0);
  fullScreen(P3D);
  
  // Load a soundfile
  soundfile = new SoundFile(this, "sirius.mp3");
      // Play the file in a loop
  soundfile.loop();
  
  // The file "teapot.obj" must be in the data folder
  // of the current sketch to load successfully
  teapot = loadShape("teapot.obj");

  
  //array of teapots
  for (int i = 0; i < teapots.length; i++){// Step 2, initialize
    teapots[i] = new Teapot();}
  
  //teapots[0] = new Teapot();  
  //teapots[1] = new Teapot();
};

void draw(){
  
  //lighting
  ambientLight(0,0,255); 
  directionalLight(0,255,0,0,-1,0);
  pointLight(255,0,0, 0, 0, 400);
  spotLight(255,0, 0, 0, 0, 400, 0,0,-1,radians(30), 30); 
  
  //interactive teapot 
   if (mousePressed){
    background(0); 
    translate(width/2, height/2, -380);
    //control rotation with mouse position
    rotateX(map(mouseY, 0, height, 0, TWO_PI));
    rotateY(map(mouseX, 0, width, 0, TWO_PI));
    scale(30);
    //shapeMode(CENTER);
    shape(teapot, 0, 0);
}
  else {
  
  //if mouse is not pressed, animation of teapots will play
  for (int i = 0; i < teapots.length; i++){
    teapots[i].move(); // and calls a function
    teapots[i].display(); //dot synthax acsses object
    //translate(width/2, height/2, -380);
  }
  }
}
