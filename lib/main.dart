import 'package:flutter/material.dart';
import 'package:json01/firstpage.dart';
import 'package:json01/fourthpage.dart';
import 'package:json01/secondpage.dart';
import 'package:json01/thirdpage.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => Homepage(),
      'first': (context) => First(),
      'second': (context) => Second(),
      'third': (context) => Third(),
      'fourth': (context) => Fourth(),
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
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(title: Text("QUOTES APP"), centerTitle: true,
       shadowColor: Colors.black,shape:Border(bottom: BorderSide(color: Colors.black,width: 2),),elevation: 10 ,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(border: Border.all(width: 2)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'first', arguments: 1);
                  },
                  child: Text(
                    "MOTIVATION QUOTES",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'second', arguments: 2);
                      },
                      child: Text(
                        "LOVE QUOTES",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ))),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "third", arguments: 3);
                      },
                      child: Text(
                        "SAD QUOTES",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ))),

              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'fourth', arguments: 4);
                      },
                      child: Text(
                        "ANIMAL QUOTES",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
