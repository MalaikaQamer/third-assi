import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const Home()
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
      title: const Text('BMI CALCULATOR',style: TextStyle(color: Colors.white),),
      ),
      body: Column(children:   [
        const Expanded( flex: 1,
          child: Text('Your Result', textAlign: TextAlign.right,style: TextStyle(color: Colors.white,fontSize: 80 ,fontWeight: FontWeight.bold),),),
       Expanded(flex: 3,
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
          color: const Color.fromARGB(255, 63, 62, 59),),
          child: Padding(
            padding: const EdgeInsets.all(39),
            child: Column(children: const [
              Expanded(flex: 2, child: Text('UNDERWEIGHT',style: TextStyle(color: Color.fromARGB(255, 9, 214, 20),fontSize: 22,fontWeight: FontWeight.bold))),
              Expanded(flex: 3, child: Text('0.0',style: TextStyle(color: Colors.white,fontSize: 80,fontWeight: FontWeight.bold),)),
              Expanded(flex: 1 ,child: Center(child: Text('You Have a lower than normal body \n weight.Yow get eat a bit more.',style: TextStyle(color: Colors.white,fontSize: 20,))))


            ],),
          ),
          ),
        )),
        Expanded(child: Center(
          child: Container(
            width: 1250,
            height: 400,
            decoration:  BoxDecoration(color: const Color.fromARGB(255, 214, 29, 16),
            borderRadius: BorderRadius.circular(10)),
            
          child: const Center(child: Text('Re-Calculate',style: TextStyle(color: Colors.white ,fontSize: 50) ,)),
          ),
        ))
      ],),
    );
  }
}