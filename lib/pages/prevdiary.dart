import 'package:flutter/material.dart';
import 'global.dart' as global;

class prevdiary extends StatelessWidget {
  prevdiary({super.key});

  String hello=global.global.diary_list[global.global.diary_list.indexOf(global.global.date)];

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

                  Text(hello,
                  style:TextStyle(color:Color(0xff000000),
                  fontSize:15)),
                  
                  // }

              // Text(global.global.diary_list[]),
            ],
      ),
      ),

    );
  }
}