
import 'package:app_lista_tarefas/modelo/objeto_data_hora.dart';
import 'package:flutter/material.dart';
import 'package:app_lista_tarefas/paginas/pagina_lista.dart';
import 'package:intl/intl.dart';

class tudoItemLista extends StatelessWidget {
  const tudoItemLista({super.key, required this.mensagem_data_hora});

  final Data_Hora mensagem_data_hora;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(102, 16, 190, 225),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(DateFormat("dd/MM/yyyy - HH:mm").format(mensagem_data_hora.data_hora), 
            style: TextStyle(fontSize: 15)),
            Text(mensagem_data_hora.titulo, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
