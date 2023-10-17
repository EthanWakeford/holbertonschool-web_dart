double cToF(double temp) {
  return ((temp * 9) / 5) + 32;
}

double roundToTwo(double old) {
  return double.parse(old.toStringAsFixed(2));
}

List<double> convertToF(List<double> temperaturesInC) {
  List<double> newTemps = [];
  for (final i in temperaturesInC) {
    newTemps.add(roundToTwo(cToF(i)));
  }
  return newTemps;
}

main() {
  print(convertToF([25, 26, 23, 27, 30]));
  print(convertToF([22.5, 26, 27.3, 23.6, 25]));
  print(convertToF([-4.2, -2, 0.5, -5, -1.7]));
}
