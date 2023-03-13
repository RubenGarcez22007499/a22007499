import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}
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
    return Scaffold(
      body: Center(
        child: Column(
          children:[
            buildText('Nome da Disciplina'),
            Container(height: 14,),
            buildText('Tipo de Avaliação'),
            Container(height: 14,),
            buildText('Data e hora da realização'),
            Container(height: 14,),
            buildText('Nivel de dificuldade esperado pelo aluno'),
            Container(height: 14,),
            buildText('Observações'),
            Container(height: 26,),
            Button(text: 'Submit',
                width: 200,
                height: 50,
                onPressed:
                    (symbol) => print('A avaliação foi registada com sucesso.'))
          ],
        ),
      ),
    );
  }
  Widget buildText(String text) => TextField(

    decoration: InputDecoration(
      labelText: text,
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.done,
  );
}

class listagemDeAvaliacoes extends StatefulWidget{
  const listagemDeAvaliacoes({super.key});

  @override
  State<listagemDeAvaliacoes> createState() => _listagemDeAvaliacoes();
}

class _listagemDeAvaliacoes extends State<listagemDeAvaliacoes> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children:[
            buildText('Nome da Disciplina'),
            Container(height: 14,),
            buildText('Tipo de Avaliação'),
            Container(height: 14,),
            buildText('Data e hora da realização'),
            Container(height: 14,),
            buildText('Nivel de dificuldade esperado pelo aluno'),
            Container(height: 14,),
            buildText('Observações'),
          ],
        ),
      ),
    );
  }
  Widget buildText(String text) => TextField(

    decoration: InputDecoration(
      labelText: text,
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.done,
  );
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List tabs = [null, null, registoDeAvaliacao()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedIndex],
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Listagem de avaliações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Registo de avaliação',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }


}







