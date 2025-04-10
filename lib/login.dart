import 'package:flutter/material.dart';
import 'package:flutter_application_2/tela_inicio.dart';


void main(){
  runApp(LoginApp());  
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
        style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), // Cor do texto da AppBar
        ),
        centerTitle: true, // Centraliza o título
        backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Define a cor da AppBar
        elevation: 4, // Sombra abaixo da AppBar
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
     
    body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          Image.asset(
              'lib/assets/avatar.png',
              width: 320,
              height: 220,
            ),
            Padding(padding: EdgeInsets.all(20)),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email',
              prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
            ),
            SizedBox(height: 16.0,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Senha',
               prefixIcon: Icon(Icons.password),
               border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
               ),
              
              ),
               SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaInicio()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:  const Color.fromARGB(255, 0, 0, 0),
                foregroundColor: Colors.white,
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

}
