import java.util.ArrayList;

float time=0.0f;
int rad =100;
ArrayList<Float> wave = new ArrayList<Float>();

void setup() {
  size(1500, 700);
}



void draw() {
  background(0);
  translate(250, 250);
  float x= rad*sin(time);
  float y=rad*cos(time);
  wave.add(0, y);
  noFill();
  stroke(255);
  circle(0, 0, rad*2);
  fill(255);
  circle(x, y, 7);
  line(0, 0, x, y);
  translate(150, 0);
  line(x-150, y, 0, wave.get(0));
  beginShape();
  for (int i=0; i<wave.size(); i++) {
    noFill();
    vertex(i, wave.get(i));
  }

    if (wave.size()>1400) {
      wave.remove(1400);
    }
    System.out.println(wave.size());
  
  endShape();
  time+=0.03;
}
