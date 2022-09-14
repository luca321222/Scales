void setup()
{
  background(134, 196, 250);
  size(500, 500);
}

void draw()
{
  scales(10, 10);
}

void scales(int x, int y)
{
  boolean shift = true;
  int red = 40;
  int green = 20;
  int blue = 60;
  for (x = 10; x <= 480; x += 10)
  {
    for (y = 10; y <= 480; y += 5)
    {
      if (shift == true)
        y += 5;
      else
        y -= 2;
      fill(red, green, blue);
      beginShape();
      curveVertex(x, y);
      curveVertex(x, y);
      curveVertex(x + 10, y + 15);
      curveVertex(x + 10, y + 20);
      curveVertex(x + 10, y + 20);
      endShape();
    }
    if (shift == true)
      shift = false;
    else
      shift = true;
    red += 5;
    green += 8;
    blue += 10;
  }
}
