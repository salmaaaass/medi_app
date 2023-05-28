import 'package:flutter/material.dart';
import 'global.dart' as global;
import 'diary.dart';
import 'prevdiary.dart';

class journal extends StatelessWidget {
  journal({super.key});

  final day = TextEditingController();
  final month = TextEditingController();
  final year = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      appBar: AppBar(
        title: const Text('Journal: Enter Date',),
        backgroundColor: Color(0xffF6F6F6),

      ),
      body: Center(
        
        child: 
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              
SizedBox(width:100,height: 50,child:
              TextFormField(
                controller: day,
                decoration: new InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Day',
                ),
                 style: TextStyle(
    fontSize: 20,)
              ),),
              const SizedBox(height: 20),
SizedBox(width:100,height: 50,child:
              TextFormField(
                controller: month,
                decoration: new InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Month',
                ),
                 style: TextStyle(
    fontSize: 20,)
              ),),
              const SizedBox(height: 20),
SizedBox(width:100,height: 50,child:
              TextFormField(
                controller: year,
                decoration: new InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Year',
                ),
                 style: TextStyle(
    fontSize: 20,)
              ),),
              const SizedBox(height: 20),

              ElevatedButton(onPressed: (){
                
                  global.global.date=day.text+"/"+month.text+"/"+year.text;
                                 
               if(global.global.date_list.contains(global.global.date)){
                  global.global.mydate=global.global.date;
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return prevdiary();
                }));
                }else{
                global.global.date_list.add(global.global.date);
                global.global.mydate=global.global.date;
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return diary();
                }));
                }
                 day.text="";
                month.text="";
                year.text="";
              }, 
              
                style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff093648),
                minimumSize: Size(300, 50),
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xff9EB9DB))
                ),
              
              child: Text("Enter"))
              
            ],
      ),
      ),

    );
  }
}