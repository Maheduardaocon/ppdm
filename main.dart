import 'package:flutter/material.dart';
import 'inicio.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(), // Defina sua splash screen como a tela inicial
      routes: {
        '/login': (context) => inicio(), // Adicione a rota para a tela de login
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulando um carregamento por 3 segundos antes de redirecionar para a tela de login
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela inicial'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/2.png'), // Adicione o caminho da sua imagem de fundo
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: CircularProgressIndicator(), // Exibir um indicador de carregamento
        ),
      ),
    );
  }
}
