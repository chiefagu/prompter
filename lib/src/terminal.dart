import 'dart:io';

import 'option.dart';

class Terminal {

  const Terminal();

  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }

  String collectInput() {
    return stdin.readLineSync();
  }

  void printOptions(List<Option> options) {
    // we are converting to a map cause it is cleaner than 
    // writing a for loop, and a forEach doesnt support index values
    Map<int, dynamic> optionsMap = options.asMap();
    optionsMap.forEach((key, option) { 
      stdout.writeln('[${key}] - ${option.label}');
    });
     
    stdout.write('\n');
    stdout.writeln('Enter a choice');
    stdout.write('> ');
  }

  void clearScreen() {
    if (Platform.isWindows) stdout.write('\x1B[2J\x1B[0f');
    else stdout.write('\x1B[2J\x1B[3J\x1B[H');
  }
}
