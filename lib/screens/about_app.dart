import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
       backgroundColor: Colors.white,
       title: Text('عن التطبيق',
       style: TextStyle(
         fontSize:30,
         fontWeight: FontWeight.bold,
         color: Colors.black,
       ),

       ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Column(


          children: [

           Align(
             alignment: AlignmentDirectional.topStart,

             child: Text(

               'What is Lorem Ipsum?',
               style: TextStyle(

                 fontSize: 30,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ),
            SizedBox(height: 10,),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Text(
                  'For more click here',
                  style: TextStyle(
                    fontSize: 20,
                  ),

                ),
                InkWell(
                  onTap: (){

                  },
                  child: Text(
                    ' here',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),


          ],

        ),
      ),
    );
  }
}
