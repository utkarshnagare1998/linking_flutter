


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


     class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 300,
          child: Column(
            children: [
              Row(
                
              children: [
                ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SecondRoute()),
                    );
                  },
                ),
              ],
                
              ),
              Row(
                children: [
                 Image.network(
          'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                ],
              )
            ],
          ),
        
         
        ),
      ),
      
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: Container(
          width: 600,
          height: 700,
           
          child: Column(
            children: [
              Row(
                children: [
                
                     ElevatedButton(
                       onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const threeRoute()),
                        );
                      },
                      child: const Text('secount page!'),
                    ),
                  
                ],
              ),
              Row(
                children: [
                  Image.network(
            'https://picsum.photos/250?image=9', fit: BoxFit.cover,height: 400,width: 520,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


  class threeRoute extends StatelessWidget {
  const threeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueAccent,
      appBar: AppBar(
        title: const Text('three Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('three route'),
           onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
