import 'package:azkar_app/widgets/out_bording_screen.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  late PageController _pageController;
  int _currentPage =0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController(initialPage: 0);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.topEnd,
           margin: EdgeInsetsDirectional.only(end: 30,top: 30),
            child: Visibility(
              visible:_currentPage!=1,
              child: TextButton(
                onPressed: (){
                  _pageController.animateToPage(1, duration: Duration(seconds: 1), curve: Curves.easeIn);
                },
                child: Text('تخطي',
                style: TextStyle(
                  fontSize: 17,
                ),
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                out_bording_screen(

                  titel: 'مرحبا بك في تطبيق أذكار',
                  SubTitel: 'تم انشاء هذا التطبيق لتنبيهك بأهميه الاذكار',
                ),

                out_bording_screen(


                  titel: 'تطبيق أذكار يحتوي على ',

                  SubTitel:'مسبحه الكترونيه و احاديث نبويه شريفه',

                ),


              ],

            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/main_screen');
              },
              child: Text('اذهب الان',
              style: TextStyle(
                fontSize: 20,
              ),),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
