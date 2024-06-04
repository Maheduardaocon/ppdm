import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'pagina.dart';


void main() {
  runApp(const inicio());
}

class inicio extends StatelessWidget {
  const inicio({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body:Login() ,
      ),
    );
  }
}

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color(0xFff00f8),
      child: Container(
        color: Colors.blueGrey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Login',
                    prefixIcon: Icon(Icons.person),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    prefixIcon: Icon(Icons.password),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pagina()),
                  );
                },
                child: const Text('Entrar'),
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
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cadastro()),
                  );
                },
                child: const Text('Sou novo aqui'),
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
            ]
        ),
      ),
    );
  }
}