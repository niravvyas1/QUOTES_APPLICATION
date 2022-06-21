import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Fourth extends StatefulWidget {
  const Fourth ({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<Fourth> {
  List allquotesdata = [];

  animal() async {
    String res = await rootBundle.loadString("assets/sad.json");
    setState(() {
      allquotesdata= jsonDecode(res);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animal();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          title: Text("ANIMAL QUOTES"),
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
                      side: BorderSide(color: Colors.blue,width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: ListTile(
                      leading: Text("$index"),
                      title: Text("${allquotesdata[index]['text']}"),
                      subtitle: Text("${allquotesdata[index]['author']}"),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
