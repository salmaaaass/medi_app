import 'package:flutter/material.dart';
import 'global.dart' as global;

class diary extends StatelessWidget {
  diary({super.key});

final hello=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      appBar: AppBar(
        title: Text(global.global.mydate),
        backgroundColor: Color(0xffF6F6F6),
      ),
      body: Center(
        child: 
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[

              SizedBox(width:300,height: 300,child:
              TextFormField(
                controller: hello,
                decoration: new InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your journal...',
                ),
                 style: TextStyle(
    fontSize: 20,)
              ),
              ),

               const SizedBox(height: 20),

              ElevatedButton(onPressed: (){
                Navigator.of(context).pop();
                global.global.diary_list[global.global.diary_list.indexOf(global.global.date)]=hello.text;
                  
                  
              }, 
              
                style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff093648),
                minimumSize: Size(300, 50),
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xff9EB9DB))
                ),
              
              child: Text("Done"))
            ],
      ),
      ),

    );
  }
}