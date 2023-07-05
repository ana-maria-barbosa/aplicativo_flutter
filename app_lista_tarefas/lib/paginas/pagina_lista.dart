import 'dart:html';

import 'package:flutter/material.dart';

final TextEditingController email_controle = TextEditingController();

class Pagina_Lista extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column( mainAxisSize: MainAxisSize.min,children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Adicione uma tarefa",
                      hintText: "Digite aqui"),
                ),
              ), SizedBox(width: 7),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 192, 250),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 30,
                    ),
                  ),],
          ),
          SizedBox(height: 40,),

          SizedBox(height: 40,),
          SizedBox(height: 320,
          child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text(" O professor Dieimes é legal com seus filhos."),
                subtitle: Text("Você concorda ?"),
                leading: Icon(Icons.question_mark, size: 30,),
                onTap: () {
                  print("BANANA");
                },
              ),
               ListTile(
                title: Text("O professor Dieimes é legal com seus filhos ."),
                subtitle: Text("Você concorda ?"),
                leading: Icon(Icons.animation_rounded , size: 30,),
                onTap: () {
                  print("MAÇÃ");
                },
              ),
               ListTile(
                title: Text(" O professor Dieimes é legal com seus filhos."),
                subtitle: Text("Você concorda ?"),
                leading: Icon(Icons.app_registration_rounded , size: 30,),
                onTap: () {
                  print("MELANCIA");
                },
              ),
               ListTile(
                title: Text(" O professor Dieimes é legal com seus filhos."),
                subtitle: Text("Você concorda ?"),
                leading: Icon(Icons.auto_stories_rounded , size: 30,),
                onTap: () {
                  print("GOIABA");
                },
              ),
               ListTile(
                title: Text(" O professor Dieimes é legal com seus filhos."),
                subtitle: Text("Você concorda ?"),
                leading: Icon(Icons.bolt_outlined , size: 30,),
                onTap: () {
                  print("MANGA");
                },
              ),
           /* Text("Mestre Jedi Dieimes Nunes"),
            ElevatedButton(onPressed: () {}, child: Text("Clique aqui"),),*/
            ],
          ),
          ),
           SizedBox(height: 40,),
          
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration:InputDecoration(
                    labelText: "Você possui 0 tarefas pendentes",
                  ),
                )
                ),
              SizedBox(width: 7),
              ElevatedButton(
                  onPressed: () {}, 
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 192, 250),
                  ),
                  child: Text ("Limpar"),
                  ),],
          ),
          
          
         
        ],
          ),
        ),
      
    );
  }
}