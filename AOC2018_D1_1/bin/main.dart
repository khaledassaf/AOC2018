import 'dart:io';

var input = File("bin/aoc_1_input.txt");

main() {
  var frequency = 0;

  input.readAsLinesSync().forEach((s) => frequency += int.parse(s));

  print(frequency);
}
