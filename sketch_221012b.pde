void setup() {// called once
size(600, 600);
}
void draw() { // called in loop

background(300, 299, 230);
if (keyPressed){
background(0, 0, 200);
} else {
  background(200, 0, 0);
}

fill(#32a852);
stroke(#006080);
strokeWeight(10);

}
