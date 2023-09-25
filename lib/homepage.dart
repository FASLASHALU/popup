import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("pop up",style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 180,left: 30),
        child: Column(
          children: [
            Text(
              "Hai mfhkfkjnjfjkhfjkjhfiuhjkhghh",
              style: TextStyle(
                fontSize: 20,
              ),
            ),SizedBox(height: 30,),
            ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  showDialog(context: context, builder: (context){
                    return Container(
                      child: AlertDialog(
                        title: Text("Are you sure "),
                        actions: [
                          TextButton(onPressed: () {
                            Navigator.pop(context);
                            
                          }, child: Text("yes")),
                          TextButton(onPressed: () {
                            Navigator.pop(context);
                            
                          }, child: Text("No"))
                        ],
                      ),
                    );
                  });
                },
                
               child: Text(
                  "Delete",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}


