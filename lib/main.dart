import 'package:flutter/material.dart';

void main(){
  runApp(Entrc_Pass());
}


class Entrc_Pass extends StatefulWidget {
  const Entrc_Pass({ Key? key }) : super(key: key);

  @override
  _Entrc_PassState createState() => _Entrc_PassState();
}

// main user window (state)
class _Entrc_PassState extends State<Entrc_Pass> {

  @override
  Widget build(BuildContext context) {
    
    AssetImage icon_image = AssetImage("resources/icon_entrc_pass.png");
    Image image = Image(image: icon_image,width: 55,height: 55);
    
    return MaterialApp(
      
      home: Scaffold(
        
        backgroundColor: Colors.black,
        
        appBar: AppBar(
          title: image,
          centerTitle: true,
          backgroundColor: Colors.black,
    
        ),
        body: const Worker_Form(),
      ),
    
    );
  }
}

// user/worker form
class Worker_Form extends StatelessWidget {
  const Worker_Form({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixText: "PIN-",
              filled: true,
              fillColor: Colors.green,
              contentPadding: EdgeInsets.all(10.0)
            )
          )
          ),
          ElevatedButton(
            child: const Text("CREATE PASS"),
            onPressed: (){
              print("Trying to connect to the database");
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              )
            )
            )
          
      ],
    );
  }
}