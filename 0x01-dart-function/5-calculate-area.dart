double calculateArea(double height, double base) {
  var area = (height * base) / 2;
  var roundedArea = double.parse(area.toStringAsFixed(2));
  return roundedArea;
}
