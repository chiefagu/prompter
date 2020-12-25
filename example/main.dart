import 'package:prompter_chief/prompter_chief.dart';

void main(){
  final options = [
    Option('I want red', '#f00'),
    Option('I want blue', '#00f'),
  ];

  final prompter = Prompter();
  String colorCode = prompter.askMultiple('What Color do you like', options);
  
  bool answer = prompter.askYesOrNo('Do you like this lib ?');
  print('$colorCode $answer');
}