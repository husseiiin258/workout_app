import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'app_provider.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});
   static const String routeName = 'three';

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return Scaffold(
      backgroundColor: Color(0xffF9FAFB),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(

              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/header_logo.png"),
                  Text("AliceCare" , style: GoogleFonts.milonga(
                    fontSize: 24,
                    fontWeight: FontWeight.w400
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              padding: EdgeInsets.symmetric(horizontal: 5 , vertical: 10),
              width: 320,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffD0D5DD)),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.search , color: Color(0xff667085),),
                  Text(" Articles  ,Video , Audio , and More ... ",style: GoogleFonts.inter(
                    color: Color(0xff667085),
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                  ),)
                ],
              ),
            ),
            Container(
              child: Wrap(
                spacing: 10,
                children: [
                  ChoiceChip(label:Text("Discover") , selected:appProvider.isSelected,
                    labelStyle: TextStyle(
                      color: appProvider.isSelected ?  Color(0xff6941C6) : Colors.grey,


                    ),
                  onSelected: (newBoolValue){
                    appProvider.changeChip(newBoolValue);
                  },),
                  ChoiceChip(label:Text("News") , selected:appProvider.isSelectedTwo,
                    labelStyle: TextStyle(
                      color: appProvider.isSelectedTwo ?  Color(0xff6941C6) : Colors.grey,
                    ),
                    onSelected: (newBoolValue){
                      appProvider.changeChipTwo(newBoolValue);
                    },),
                  ChoiceChip(label:Text("Most Viewd") , selected:appProvider.isSelectedThree,
                    labelStyle: TextStyle(
                      color: appProvider.isSelectedThree ?  Color(0xff6941C6) : Colors.grey,
                    ),
                    onSelected: (newBoolValue){
                      appProvider.changeChipThree(newBoolValue);
                    },),
                  ChoiceChip(label:Text("Saved") , selected:appProvider.isSelectedFour,
                    labelStyle: TextStyle(
                      color: appProvider.isSelectedFour ? Color(0xff6941C6) : Colors.grey,
                    ),
                    onSelected: (newBoolValue){
                      appProvider.changeChipFour(newBoolValue);
                    },),


                ],
              ),
            ) ,
            Container(
              margin: EdgeInsets.only(left: 35 , right: 25 , top: 30 , bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hot topics" , style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),),
                  Container(

                    child: Row(
                      children: [
                        Text("see all" , style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff5925DC) ,
                        ),),
                        Icon(Icons.arrow_right , color: Color(0xff5925DC),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 326,
                    height: 160,
                    margin: EdgeInsets.only(left: 20 , right: 20),

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage("assets/images/Frame 3466530.png")
                        )
                    ),

                  ),
                  Container(
                    width: 326,
                    height: 160,
                    margin: EdgeInsets.only(left: 10 , right: 20),

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage("assets/images/Frame 3466530 (1).png")
                        )
                    ),

                  )

                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 35 , top: 35 , bottom: 20),
              child:    Text("Get Tips" , style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
              ),),
            ),
            Container(
              width: 326,
              height: 196,
              decoration: BoxDecoration(
                color: Color(0xffE4E7EC),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/Doctor-PNG-Images 1.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Connect with doctors &\nget suggestions" , style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),),
                      Text("Connect now and get\nexpert insights" , style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                      ElevatedButton(onPressed: (){}, child:
                      Text("View Detail" , style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        color: Colors.white
                      ) ,) ,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff7F56D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          )
                        ),
                        )
                    ],
                  )
                ],
              ),

            ),
            Container(
              margin: EdgeInsets.only(left:30, top: 40 , bottom: 40 , right: 10),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Cycle Phases and Period" , style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),),
                  Container(
                    child: Row(
                      children: [
                        Text("see all" , style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff5925DC) ,
                        ),),
                        Icon(Icons.arrow_right, color: Color(0xff5925DC),)
                      ],
                    ),
                  ),

                ],
              ) ,
            ),



          ],
        ),
      ),
    );
  }
}
