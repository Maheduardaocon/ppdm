import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Importando o pacote material, que contém os widgets do Flutter
import 'usuario.dart';

class cadastro extends StatelessWidget {

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
  TextEditingController _loginController =  TextEditingController();
  TextEditingController _senhaController =  TextEditingController();


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
                  controller: _loginController,
                  decoration: InputDecoration(
                      labelText: 'Login',
                      prefixIcon: Icon(Icons.login),
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
                  controller: _senhaController,
                  decoration: InputDecoration(
                      labelText: 'Senha',
                      prefixIcon: Icon(Icons.password),
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
                      SnackBar(content: Text('Seja bem vindo')));


                  usuario user = new usuario();
                  user.login = _loginController.text;
                  user.senha = _senhaController.text;
                  print ("login"+ user.login);
                  print ("senha"+ user.senha);
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