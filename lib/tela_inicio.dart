import 'package:flutter/material.dart';

class TelaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pagina Inicial',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            ),
          ),
        centerTitle: true,
        backgroundColor: Colors.black,
    ),
    backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Pesquisar',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(30.0)),
              Image.asset(
              'lib/assets/pesquisa-cientifica-1.png',
              width: 350,
              height: 250,
            ),

          ],
        )
        )
    );
  } 
}
