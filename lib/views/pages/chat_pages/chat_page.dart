import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        leading: IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text("rachelmorrisonr", style: TextStyle(color: Colors.black, fontFamily: "Montserrat", fontSize: 15, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 10,bottom: 10,top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.camera_alt, color: Colors.black, size: 25, ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Write something...",
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.white,
                      elevation: 0,
                      child: const Icon(Icons.send_rounded,color: Colors.black,size: 25,),
                    ),
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
