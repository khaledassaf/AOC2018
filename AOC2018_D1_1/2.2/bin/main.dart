import 'dart:io';

var input = File("bin/aoc_1_input.txt");

main() {

  var boxIds = input.readAsLinesSync();

  int diff = 0;
  boxIds.forEach((candidate){
    boxIds.forEach((s){
      for(int i = 0; i < s.length; i++){
        if(s[i] != candidate[i]) diff++;
      }

      if(diff == 1){
        print(s);
        print(candidate);
      }
      else diff = 0;
    });
  });

  //todo: solution can be optimised heavily..
}
