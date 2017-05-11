/* //<>// //<>//
 Meter as a partial circle.
 Change a few colors.
 Note that the circle starts at 90.0 degrees (6:00 OClock) and
 moves clockwise. The scale labels have to be in this order.

  Non-Hardware example.
 
 created April 19, 2017
 by Bill (Papa) Kujawa.
 
 This example code is in the public domain.
 */

import meter.*;

Meter m;

void setup() {
  size(700, 600);
  background(255, 255, 200);

  // Display a full circle meter.
  m = new Meter(this, 125, 25, true); // Instantiate a full circle meter class.

  m.setMeterFrameColor(color(100, 0, 0));
  m.setMeterTitleFontColor(color(0, 200, 0));
  m.setMeterPivotPointColor(color(255, 0, 0));
  m.setArcColor(color(0, 0, 200));
  m.setMeterScaleFontColor(color(200, 100, 0));
  m.setTicMarkColor(color(217, 22, 247));
  // Define where the scale labele will appear
  m.setMinArcDegrees(90.0); // (start)
  m.setMaxArcDegrees(360.0); // ( end)

  String[] scaleLabels = {"0", "10", "20", "30", "40", "50", "60", "70", "80"};
  m.setScaleLabels(scaleLabels);

  // Change the title from the default "Voltage" to a more meaningful label.
  m.setMeterTitle("Rainbow");

  // Display only the digital sensor values input.
  m.setInformationAreaText("Sensor: % 4d");
  m.setDisplayDigitalSensorValues(true);
}

void draw() {

  // Simulate sensor data.
  int newSensorReading;
  newSensorReading = (int)random(0, 255);

  // Display the new sensor value.
  m.updateMeter(newSensorReading);
  delay(1000); // Allow time to see the change.
}