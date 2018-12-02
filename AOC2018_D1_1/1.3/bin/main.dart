import 'dart:io';

var input = File("bin/aoc_1_input.txt");

main() {
  int twos = 0;
  int threes = 0;

  var boxIds = input.readAsLinesSync();

  var map = Map<String, int>();

  boxIds.forEach((s){
    for(int i = 0; i < s.length; i++){
      if(!map.containsKey(s[i]))
        map.putIfAbsent(s[i], ()=>1);
      else
        map[s[i]]++;
    }
    if(map.containsValue(3)){
      threes++;
    }
    if(map.containsValue(2)){
      twos++;
    }
    map.clear();
  });

  print(twos*threes);

}
