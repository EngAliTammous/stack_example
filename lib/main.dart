import 'package:flutter/material.dart';
import 'package:stack_example/search_screen.dart';

import 'home_screen.dart';


void main ()=> runApp( MyApp());

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pages = const [
    HomeScreen(),
    SearchScreen(),
  ];

 int pageCurrent = 0 ;
 //bool showLine ;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar:Container(
          height: 80,
          margin:const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 16.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   IconButton(icon:const Icon(Icons.person_outline),onPressed: (){
                    setState(() {
                      pageCurrent = 0 ;
                    });
                  },),
                  pageCurrent==0?Container(width: 4,height: 4,
                    decoration:const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                    ),
                  ):Container(),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon:const Icon(Icons.search_rounded),onPressed: (){
                    setState(() {
                      pageCurrent = 1 ;

                    });              }, ),
                  pageCurrent==1?Container(width: 4,height: 4,
                    decoration:const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                    ),
                  ):Container(),
                ],
              ),

              const  Icon(Icons.settings),
            ],
          ),
        ),
          body:pages[pageCurrent],
      ),
    );
  }
}
