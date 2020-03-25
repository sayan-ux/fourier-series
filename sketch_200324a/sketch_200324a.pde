import java.util.ArrayList;


float time=0.0f;
float rad =100, u=0.0;
int n =0;

ArrayList<Float> wave = new ArrayList<Float>();

void setup() {
  size(1500, 700);
}



void draw() {
  background(0);

  translate(250, 250);
  float x=0;
  float y=0;
  for (int i=0; i<30; i++) {
    float px=x;
    float py=y;
    n=i*2+1;
    u=rad*(4/(n*PI));

    x+= u*cos(n*time);
    y+=u*sin(n*time);

    noFill();
    stroke(255, 100);
    circle(px, py, u*2);
    stroke(255);

    line(px, py, x, y);
    fill(255);
    circle(x, y, 2);
  }
  wave.add(0, y);
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
