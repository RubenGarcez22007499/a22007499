import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class TextfieldGeneralWidget extends StatefulWidget{
  @override
  _TextfieldGeneralWidgetState createState() => _TextfieldGeneralWidgetState();
}
class _TextfieldGeneralWidgetState extends State<TextfieldGeneralWidget>{
  @override
  Widget build(BuildContext context) => Center(
      child: ListView(
          padding: EdgeInsets.all(32),
          children:[
            buildText('Nome da Disciplina'),
            buildText('Tipo de Avaliação'),
            buildText('Data e hora da realização'),
            buildText('Nivel de dificuldade esperado pelo aluno'),
            buildText('Observações'),
            const SizedBox(height: 14),
            Button(
              text: 'Submit',
              onPressed: () {}, width: 10, height: 10,
            )
          ]
      )
  );

  Widget buildText(String text) => TextField(
    decoration: InputDecoration(
      labelText: text,
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.done,
  );
}