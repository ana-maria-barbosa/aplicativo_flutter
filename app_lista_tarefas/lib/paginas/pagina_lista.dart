
import 'package:app_lista_tarefas/modelo/objeto_data_hora.dart';
import 'package:flutter/material.dart';

import '../widgets/itens_lista.dart';

final TextEditingController email_controle = TextEditingController();

class Pagina_Lista extends StatefulWidget {
  @override
  State<Pagina_Lista> createState() => _Pagina_ListaState();
}

class _Pagina_ListaState extends State<Pagina_Lista> {
  final TextEditingController mensagensControlador = TextEditingController();

  List<Data_Hora> Mensagens = [];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: mensagensControlador,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Adicione uma tarefa",
                        hintText: "Digite aqui"),
                  ),
                ),
                SizedBox(width: 7),
                ElevatedButton(
                  onPressed: () {
                    String qualquercoisa = mensagensControlador.text;
                    setState(() {
                      Data_Hora item_data_hora = Data_Hora(
                        titulo: qualquercoisa, data_hora: DateTime.now());
                      Mensagens.add(item_data_hora);
                    });
                    mensagensControlador.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(204, 0, 192, 250),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 320,
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (Data_Hora mensagem_controle in Mensagens)
                   tudoItemLista(
                    mensagem_data_hora: mensagem_controle,
                   ),
                  /* ListTile(
                      title:
                          Text(mensagem),
                      subtitle: Text("Feito por Ana Maria"),
                      leading: Icon(
                        Icons.question_mark,
                        size: 30,
                      ),
                      onTap: () {
                        print("Mensagem: $mensagem   "); 
                      },
                    ),*/
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    labelText: "Você possui 0 tarefas pendentes",
                  ),
                )),
                SizedBox(width: 7),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Mensagens.clear();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(204, 0, 192, 250),
                  ),
                  child: Text("Limpar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
