class MegaMosquito {
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;

  public MegaMosquito() {
    imagen = loadImage("megamosquito.png");
  }

  public MegaMosquito(PVector posicion, PVector velocidad) {
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen = loadImage("megamosquito.png");
  }

  public void dibujar() {
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 120, 120);
  }
public void mover() {

  this.posicion.add(this.velocidad);

 
  if (this.posicion.x > width || this.posicion.x < 0) {
    
    this.velocidad.x = this.velocidad.x * -1;
  }

 
  if (this.posicion.y > height || this.posicion.y < 0) {
   
    this.velocidad.y = this.velocidad.y * -1;
  }
}

}
