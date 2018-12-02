import 'dart:io';

var input = File("bin/aoc_1_input.txt");

main() {
  var curFrequency = 0;
  var frequencies = List<int>();
  var inputNumbers = List<int>();
  var conditionMet = false;

  input.readAsLinesSync().forEach((s) => inputNumbers.add(int.parse(s)));

  while(!conditionMet){
    inputNumbers.forEach((n){
      if(frequencies.contains(curFrequency)){
        conditionMet = true;
        exit;
      }
      else{
        frequencies.add(curFrequency);
        curFrequency += n;
      }
    });
  }

  print(curFrequency);
}
