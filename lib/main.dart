import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:payflow_app/app_widget.dart';

void main()
{
  runApp(const AppFirebase());
}

class AppFirebase extends StatefulWidget {
  const AppFirebase({Key? key}) : super(key: key);

  @override
  State<AppFirebase> createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot)
      {
        if(snapshot.hasError)
        {
          return const Material(
            child: Center(
              child: Text(
                "Não foi possível inicializar o Firebase",
                textDirection: TextDirection.ltr, //tem que por essa linha se não dá erro
              ),
            )
          );
        }
        else if(snapshot.connectionState == ConnectionState.done)
        {
          return const AppWidget();
        }
        else
        {
          return const Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      }
    );
  }
}

//Essa classe vai funcionar da seguinte maneira, o futureBuilder é uma classe assincrona, ou seja, espera um retorno para acontecer.
//Nesse caso, ela está esperando a inicialização do Firebase. O snapshot é um registro do status do sistema, portanto, se caso
//der algum erro, será exibida a mensagem de erro, se a conexão com o firebase der certo vai exibir a tela incial do app e, enquanto está 
//carregando, vai mostrar uma tela de carregamento/loading