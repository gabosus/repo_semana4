class Background{
  private PImage imagen;
  
 public Background(){
   imagen = loadImage("forest.jpg");
   imagen.resize(800,800);
 }
 public void dibujar(){
   background(imagen);
   imageMode(CENTER);
 }
}
