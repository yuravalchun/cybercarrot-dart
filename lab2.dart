import 'dart:core';

void main() {
  // magic operators o_O
  var code = 'redness';
  var position;
  position ??= code;
  print(position);
  
  position = code == 'redness' ? 'section' : 'element';
  print(position);
  
  var test = null;
  var b = test ?? 'default';
  print(b + '\n');
  
  // functions
  var myFunc = (msg) => msg.toLowerCase();
  print(myFunc("HeLLoWWW"));
  
  var wordToOleg = magicFunc('Oleg');
  print(wordToOleg('Hello'));
  
  var reallySome = some(1, 2, c: 3);
  print(reallySome.toString() + '\n');
  
  // collection
  var listOne = ['one', 'two', 3];
  var listTwo = [0, ...listOne];
  print(listTwo.length == 4 ? 'good' : 'bad');
  
  var listOfInts = [1, 2, 3];
  var likePython = [for (int iter in listOfInts) '$iter'];
  print(likePython);
  
  var names = <String>{};
  names.add('python');
  names.add('php');
  names.add('python');
  print(names);
  
  var likePhp = new Map<String, String>();
  likePhp['SECTION_CODE'] = 'razer';
  likePhp['ELEMENT_CODE'] = 'kraken';
  print(getUrl(likePhp));
}

Function magicFunc(name) {
  return (word) => '${word} ${name}';
}

int some(int a, int b, {int c, int d = 10}){
   return a + b * c + d;
}

String getUrl(Map element) {
  String host = 'https://militarist.ua/';
  return '${host}${element["SECTION_CODE"]}/${element["ELEMENT_CODE"]}/';
}
