class Piso {
  int distanciaEntreRect;
  int alto;
  int ancho;
  PVector coordenadasRect;

 
  public Piso(int distancia, int a, int an, PVector pos) {
    background(#5F4727);
    distanciaEntreRect = distancia;
    alto = a;
    ancho = an;
    coordenadasRect = pos.copy(); // Usa una copia del PVector para evitar referencias compartidas
  }

  
  void dibujar() {
  for (float x = coordenadasRect.x; x < width; x += (ancho + distanciaEntreRect)) {
    for (float y = coordenadasRect.y; y < height; y += (alto + distanciaEntreRect)) {
     rect(x, y, ancho, alto);
     fill(#507925);
    }
  }
  }
}
