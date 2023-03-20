

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 219, 223),
      appBar: AppBar(title: Text("Fust Page"),),
      body: Center(
        child: Container(
          child:  ElevatedButton(
              
              onPressed: () {},
              child: const Text('Enabled'),
            ),
        
        ),
      ),
    );
  }
}