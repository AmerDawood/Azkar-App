import 'dart:ui';

import 'package:azkar_app/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

int _counter = 0;
String _content ='أستغفر الله';


class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.cyan,
         onPressed: (){
           setState(() {
             ++_counter;
           });
         },
         child: Icon(
           Icons.add,

         ),


       ),

        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'أذكار',
            style: TextStyle(

              color: Colors.cyan,
              fontFamily: 'cairo',
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            // IconButton(onPressed: (){
            //   Navigator.pushNamed(context, '/about_app',);
            // }, icon: Icon(
            //   Icons.info,
            //
            // ),),
            PopupMenuButton<String>(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
                onSelected: (String selectedItem){

                if(_content != selectedItem){
                  setState(() {
                    _content =selectedItem;
                    _counter=0;

                  });

                }
                },
                offset: Offset(15,40),
                color: Colors.cyan,

                itemBuilder:(context){


              return [


                PopupMenuItem(child: Text('الحمد لله',),
                value:'الحمد لله',
                ),
                PopupMenuItem(child: Text('سبحان الله'),
                value: 'سبحان الله',
                ),
                PopupMenuItem(child: Text('لا اله الا الله '),
                value: 'لا اله الا الله ',
                ),
                PopupMenuItem(child: Text('الله اكبر'),
                  value: ' الله اكبر',
                ),


              ];
            }),

          ],
          // leading: IconButton(
          //   onPressed: (){},
          //   icon: Icon(
          //     Icons.menu,
          //   ),
          // ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage('images/islamic_image.jpg'),
             fit: BoxFit.cover,
             // colorFilter: ColorFilter.srgbToLinearGamma(),
            ),
          ),


          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Card(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _content,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'cairo',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 50,
                        height: 50,
                        color: Colors.cyan,
                        child: Text(
                          _counter.toString(),
                          style: TextStyle(
                            fontFamily: 'cairo',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    AppButton(
                      flex: 2,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                      ),
                      onPressed: () {
                        setState(() {
                          ++_counter;
                        });
                      },
                      text: 'تسبيح',
                    ),
                    AppButton(
                      flex: 1,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                      ),
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      text: 'رجوع',
                      backgroundcolor: Colors.white,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
