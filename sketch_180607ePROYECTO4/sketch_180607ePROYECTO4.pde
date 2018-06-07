import processing.sound.*;
import processing.video.*;
Movie mov;
SoundFile file;
//ACUATIC VISUALIZATION//
void setup() {
  //fullScreen();
  size(850, 490);
  background(#1A2DD3);
  mov = new Movie(this, "Jelly4.mp4");
  mov.play();
  mov.loop();
  file = new SoundFile(this, "Sound1.mp3");
  file.play();
  file.jump(4);
  file.amp(0.8);
}


void movieEvent(Movie mov) {
  mov.read();  
}

void draw() {    
  image(mov, 0, 0);
  loadPixels ();
  mov.loadPixels();  
    for(int i=0; i<width*height; i++)
  {
    color p=pixels[i];
    float r=red(p);
    float g=green(p);
    float b=blue(p);
    r=constrain(r+mouseX/10,20,255); //Brillo Y Gama Tonal Rojos
    g=constrain(g+mouseY/10,50,255); //Brillo Y Gama Tonal Verdes
    b=constrain(b+mouseX/10,0,255); //Brillo Y Gama Tonal Azules
    pixels[i]=color(r,g,b);
   

    
  }
  updatePixels ();
  
}