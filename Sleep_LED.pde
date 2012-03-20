/*
"Breathing sleep LED, like on a Mac.
Jeremy Saglimbeni 2011
thecustomgeek.com

LED is attached to pin 11 in series with a 5.6K resistor
*/
int i = 0;
void setup() { // bring the LED up nicely from being off
  pinMode(11, OUTPUT);
  for(i = 0 ; i <= 15; i+=1)
  {
    analogWrite(11, i);
    delay(5);
  }
}
void loop()
{
  for(i = 15 ; i <= 255; i+=1)
  { 
    analogWrite(11, i);
    if (i > 150) {
      delay(4);
    }
    if ((i > 125) && (i < 151)) {
      delay(5);
    }
    if (( i > 100) && (i < 126)) {
      delay(7);
    }
    if (( i > 75) && (i < 101)) {
      delay(10);
    }
    if (( i > 50) && (i < 76)) {
      delay(14);
    }
    if (( i > 25) && (i < 51)) {
      delay(18);
    }
    if (( i > 1) && (i < 26)) {
      delay(19);
    }
  }
  for(i = 255; i >=15; i-=1)
  {
    analogWrite(11, i);
    if (i > 150) {
      delay(4);
    }
    if ((i > 125) && (i < 151)) {
      delay(5);
    }
    if (( i > 100) && (i < 126)) {
      delay(7);
    }
    if (( i > 75) && (i < 101)) {
      delay(10);
    }
    if (( i > 50) && (i < 76)) {
      delay(14);
    }
    if (( i > 25) && (i < 51)) {
      delay(18);
    }
    if (( i > 1) && (i < 26)) {
      delay(19);
    }
  }
  delay(970);
}
