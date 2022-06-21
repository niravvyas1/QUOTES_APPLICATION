import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  List allquotesdata = [];

  quotesdata() async {
    String res = await rootBundle.loadString("assets/motivation.json");
    var data = jsonDecode(res);

    setState(() {
      allquotesdata = data['quotes'];
    });
  }
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
    quotesdata();
  }
  @override
  Widget build(BuildContext context) {

    dynamic i = ModalRoute.of(context)!.settings.arguments;
    
    if(i==1){
      quotesdata();
    }else if(i==2){
      quotes();
    }
    else if(i==3){

    }else if(i==4){
      quotes();
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          title: Text("MOTIVATION QUOTES"),
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
                    elevation: 3,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue,width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: Text("$index"),
                      title: Text("${allquotesdata[index]['quote']}"),
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
