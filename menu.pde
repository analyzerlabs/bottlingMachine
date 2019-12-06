void menu() {
  stroke(fondoMenu);
  fill(fondoMenu);
  rect(0, h/20, w/20, h);
  stroke(white);
  fill(white);
  textSize(bigLetters);
  textAlign(CENTER, CENTER);
  text("  EMBOTELLADORA  INDUSTRIAL ", w/2, h/40);
  textSize(22);
  textAlign(CENTER, CENTER);
  text("Autor: Miguel Quispe Castro ", 6*w/8, 3*h/5);
  text("Email: miguelquispecastro@uni.pe ", 6*w/8, 3*h/5+h/20);
  textSize(18);
  textAlign(CENTER, CENTER);
  stroke(rojo);
  text("* Ricky Panduro ", 6*w/8, 3*h/5+ 2*h/20);
  line(6*w/8 - w/6, 3*h/5+ 17*h/160,6*w/8+w/6, 3*h/5+ 17*h/160);
  text("* Sebastian Rimachi ", 6*w/8, 3*h/5+ 3*h/20);
  text("* Junior Cierto ", 6*w/8, 3*h/5+ 4*h/20);
  text("* Borracho cibertec ", 6*w/8, 3*h/5+ 5*h/20);
  text("* Gregorio Leo  ", 6*w/8, 3*h/5+ 6*h/20);
  text("* Celina Sanchez  ", 6*w/8, 3*h/5+ 7*h/20); 
  line(6*w/8 - w/6, 3*h/5+ 57*h/160,6*w/8+w/6, 3*h/5+ 57*h/160);
  //arc(w/20, h/20, 50, 70, PI-PI/2, PI+PI/4, CHORD);
  //image(icon, 0, 0,h/10,h/10);
}
