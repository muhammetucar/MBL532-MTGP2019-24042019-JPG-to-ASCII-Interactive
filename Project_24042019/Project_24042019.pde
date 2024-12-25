PImage yoda;
PFont ft;

color[][] yodaninRenkleri = new color[600][600];
int XBol =40;
int YBol =40;
int en, boy ;

void setup()
{
  size (600, 600);
  background(255);

  yoda = loadImage ("yoda.jpg");
  ft = loadFont ("BellMTBold-48.vlw");

  en = width / XBol;
  boy = height / YBol;

  //tint (255,126);
}

void draw()
{
  // tint (255,126);
  image (yoda, 0, 0);
  // filter (INVERT);
  //filter (THRESHOLD);
  for (int j = 0; j<600; j++)
  {
    for (int i = 0; i<600; i++) 
    {
      yodaninRenkleri [i][j] = get(i, j);
    }
  }

  noStroke();
  for (int j = 0; j<YBol; j++)
  {
    for (int i = 0; i<XBol; i++) 
    {
      fill (255);
      noStroke ();
      rect (i*en, j*boy, en, boy);

      stroke (yodaninRenkleri [i*en][j*boy]);
      fill (yodaninRenkleri [i*en][j*boy]);
      strokeWeight (4);
      // rect (i*en, j*boy, en, boy);
      pushMatrix ();
      translate (i*en, j*boy);
      rotate (radians(blue(yodaninRenkleri [i*en][j*boy])+ mouseX/10));
      kanavice (0, 0, en, boy);
      popMatrix ();
    }
  }
}

void kanavice(int X, int Y, int enn, int boyy)
{
  /* beginShape (LINES);
   
   vertex (X, Y);
   vertex (X+enn, Y+boyy);
   vertex (X+enn, Y);
   vertex (X, Y+boyy);
   
   endShape ();*/
 /* beginShape (LINES);

  vertex (X -random(enn), Y-random(boyy));
  vertex (X+random(enn), Y+random(boyy));
  vertex (X+random(enn), Y-random(boyy));
  vertex (X-random(enn), Y+random(boyy));

  endShape ();*/
  //ellipse(X - random(5), Y - random(5), enn+5, boyy+5);
  
  textFont(ft, boyy *3);
  text( "?", X, Y);
 
}
