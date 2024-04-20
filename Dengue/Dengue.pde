private Raid lata;
private MegaMosquito bicho;
private Background fondo;
private Piso floor;
public void setup(){
  size(800,800);
  lata = new Raid(); 
  fondo = new Background();
  lata.setPosicion(new PVector(width/2,height/1.40 ));
  lata.setVelocidad(new PVector(10,10));
  
  bicho = new MegaMosquito(new PVector(width/2,80),new PVector(10,1));
  floor =  new Piso(15, 20, 50, new PVector(width/30,height/1.10));
}

public void draw(){
  fondo.dibujar();
  lata.dibujar();
  actualizarVelocidadNave();
  bicho.dibujar();
  bicho.mover();
  floor.dibujar();
}

public void keyPressed(){
  if(key=='d'){
    lata.mover(1);
  }
  if(key=='a'){
    lata.mover(0);
  }
  
  if(key=='w'){
    lata.mover(2);
  }
  if(key=='s'){
    lata.mover(3);
  }
  
}

public void actualizarVelocidadNave(){
 
    lata.getVelocidad().x = 20;
  

  
  if(lata.getPosicion().x <= 0 || lata.getPosicion().x >= width){
    lata.getVelocidad().x *= -1; 
  }

 
  if(lata.getPosicion().y <= 0 || lata.getPosicion().y >= height){
    lata.getVelocidad().y *= -1; 
  }
}
