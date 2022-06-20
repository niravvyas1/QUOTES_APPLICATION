
import 'package:flutter/material.dart';
import 'package:json01/firstpage.dart';
import 'package:json01/secondpage.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => Homepage(),
      'first':(context)=>First(),
      'second':(context)=>Second(),
    }),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("QUOTES APP"),centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 200,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, 'first',arguments: 1);
                }, child: Text("MOTIVATION QUOTES",style: TextStyle(fontWeight: FontWeight.w700),),),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'second',arguments: 2);
                  }, child: Text("LOVE QUOTES",style: TextStyle(fontWeight: FontWeight.w700),))),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 200,child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'first',arguments: 3);
              }, child: Text("SAD QUOTES",style: TextStyle(fontWeight: FontWeight.w700),))),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 200,child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, 'first',arguments: 4);

              }, child: Text("ANIMAL QUOTES",style: TextStyle(fontWeight: FontWeight.w700),))),
            ],
          ),
        ),
      ),
    );
  }
}
