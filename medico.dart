import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Importando o pacote material, que contém os widgets do Flutter
import 'usuario.dart';


class medico extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormCadastro(),
      ),
    );
  }
}
class FormCadastro extends StatelessWidget {
  TextEditingController _nomemedController =  TextEditingController();
  TextEditingController _especialidadeController =  TextEditingController();


  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blueGrey,
      child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _nomemedController,
                  decoration: InputDecoration(
                      labelText: 'Nome',
                      prefixIcon: Icon(Icons.people),
                      filled:true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                  ),
                ),
              ),


              SizedBox(height:20.0),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _especialidadeController,
                  decoration: InputDecoration(
                      labelText: 'Especialidade',
                      prefixIcon: Icon(Icons.medical_services_outlined),
                      filled:true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Médico cadastrado')));


                  usuario user = new usuario();
                  user.nomemed = _nomemedController.text;
                  user.especialidade = _especialidadeController.text;
                  print ("nome"+ user.nomemed);
                  print ("login"+ user.especialidade);

                },
                child: const Text('Cadastrar'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(color: Colors.white, fontSize: 14),
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    minimumSize: Size(180, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              )
            ],
          )
      ),
    );
  }
}