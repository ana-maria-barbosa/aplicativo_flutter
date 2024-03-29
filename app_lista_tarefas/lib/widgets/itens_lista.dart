import 'package:app_lista_tarefas/modelo/objeto_data_hora.dart';
import 'package:flutter/material.dart';
import 'package:app_lista_tarefas/paginas/pagina_lista.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

class tudoItemLista extends StatelessWidget {
  const tudoItemLista({super.key, required this.mensagem_data_hora,
  required this.item_deletar_tarefas,});
  

  final Data_Hora mensagem_data_hora;
  final Function(Data_Hora)item_deletar_tarefas;
  

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            flex: 2,
            onPressed: (context){
              item_deletar_tarefas(mensagem_data_hora);
            },
            backgroundColor: Color.fromARGB(255, 255, 0, 0),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Deletar',
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(188, 148, 65, 236),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                  DateFormat("dd/MM/yyyy - HH:mm")
                      .format(mensagem_data_hora.data_hora),
                  style: TextStyle(fontSize: 15)),
              Text(mensagem_data_hora.titulo, style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
