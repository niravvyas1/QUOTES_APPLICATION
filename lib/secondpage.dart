import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<Second> {
  List allquotesdata = [];

    quotes() async {
      String res = await rootBundle.loadString("assets/love.json");
      setState(() {
        allquotesdata= jsonDecode(res);
      });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quotes();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          title: Text("LOVE QUOTES"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            alignment: Alignment.center,
            child: ListView.builder(
                itemCount: allquotesdata.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    shadowColor: Colors.black,

                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: ListTile(
                      leading: Text("$index"),
                      title: Text("${allquotesdata[index]['text']}"),
                      subtitle: Text("${allquotesdata[index]['from']}"),
                    ),
                  );
                }),
          ),
        ),
      ),
    );


  }


  }
