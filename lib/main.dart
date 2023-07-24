import 'package:flutter/material.dart';
import 'names.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Friend List",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),

      body: SafeArea(

        child: Container(
          color: Colors.grey.shade300,
          child: ListView.builder(itemCount: Names.names.length,itemBuilder: (BuildContext context, int index){
            return buildNameCard(Names.names[index]);
          }),
        ),
      ),



    );
  }
}
Widget buildNameCard(Names names){
  return Card(
    elevation:2.0,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)
    ),

 child: Padding(
   padding: const EdgeInsets.all(16.0),
   child: Column(
     children: <Widget>[
       Image(image: AssetImage(names.imageUrl)),
       const SizedBox(
         height: 14.0,
       ),
       Text(names.name,
         style: const TextStyle(
           fontSize: 20.0,
           fontWeight: FontWeight.w700,
           fontFamily: 'Palatino'
         ),
       ),
     ],
   ),
 ),
  );
}
