class Background{
  private PImage imagen;
  
 public Background(){
   imagen = loadImage("forest.jpg");
   imagen.resize(800,800);
 }
 public void dibujar(){
  tint(0, 255, 0, 100); 
    background(imagen); 
    imageMode(CENTER);
    image(imagen, width/2, height/2); 
    noTint(); 
}
}
