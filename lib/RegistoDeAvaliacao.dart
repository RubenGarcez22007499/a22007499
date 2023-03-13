import 'package:flutter/cupertino.dart';

class registoDeAvaliacao extends StatefulWidget{
  const registoDeAvaliacao({super.key});

  @override
  State<registoDeAvaliacao> createState() => _registoDeAvaliacao();
}

class _registoDeAvaliacao extends State<registoDeAvaliacao> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context){
    return Text(
      'Dashboard',
       style: optionStyle,
    );
  }
}