import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:provider/provider.dart';
import 'package:quiz_project/screen_three.dart';
import 'package:quiz_project/screen_two.dart';
import 'app_provider.dart';

class ScreenOne extends StatelessWidget {
  List<Widget> screens = [

    ScreenTwo(),
    const ScreenThree(),
  ];

  static const String routeName = 'one';

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return Scaffold( backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(40),
              child: Row(
                children: [
                  Image.asset('assets/images/logo.png') ,
                   Expanded(
                        flex: 3,
                     child :Container(
                       margin: EdgeInsets.only(left:20),
                       child: Text("Moody" , style: GoogleFonts.inter(
                         fontSize: 24,
                         fontWeight: FontWeight.bold,
                       ), ),
                     ),
                        ),



                  badges.Badge(
                  badgeContent: Container(color: Colors.red,),
                    child: Image.asset("assets/images/Icon.png")
                  )


                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 40),
              child: Row(
    children: [
        Text('Hello ,  ' , style: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 20
        ),),
        Text("Sara Rose" , style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          fontSize: 20

        ),)

    ],
    )
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 40 , top: 30),
              child: Text('How are you felling today ?' , style: GoogleFonts.inter(
                fontSize: 16 ,
                fontWeight: FontWeight.w400 ,
              ),),
            ),
            Container(

              margin: EdgeInsets.only(left: 40 , top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.only(top: 30, right: 18 , bottom: 5),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 10.0 ,
                                color:Color(0xffE4E7EC)),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/love_frame.png")
                            )
                        ) , ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 18 , bottom: 5),
                        child: Text("Love", style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.only(top: 30, right: 18 , bottom: 5),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 10.0 ,
                                color:Color(0xffE4E7EC)),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/cool_Frame.png")
                            )
                        ) , ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 18 , bottom: 5),
                        child: Text("Cool", style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.only(top: 30, right: 18 , bottom: 5),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 10.0 ,
                                color:Color(0xffE4E7EC)),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/happy_Frame.png")
                            )
                        ) , ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 18 , bottom: 5),
                        child: Text("Happy", style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.only(top: 30, right: 18 , bottom: 5),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 10.0 ,
                                color:Color(0xffE4E7EC)),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/sad_frame.png")
                            )
                        ) , ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 18 , bottom: 5),
                        child: Text("Sad", style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),),
                      )
                    ],
                  ),
                ],
              ),


            ),
            Container(
              margin: EdgeInsets.only(left:40, top: 40 , right: 40 , bottom: 40),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Feature" , style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),),
                  Container(
                    child: Row(
                      children: [
                        Text("see more" , style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff027A48) ,
                        ),),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                  )
                ],
              ) ,
            ),

          CarouselSlider(items: [Container(
            decoration: BoxDecoration(
                color: Color(0xffECFDF3),
                borderRadius: BorderRadius.circular(16)
            ),
            height: 168,
            width: 326,
            padding: EdgeInsets.all(14),
            alignment: Alignment.centerLeft,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Positive vibes' , style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff344054)
                    ),),
                    Container(

                      child: Text("Boost your mood with \nPositive vibes" , style: GoogleFonts.inter(
                          fontSize: 16 ,
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_circle , color: Color(0xff0ad13f),),
                        Text("  10 Mins", style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),)
                      ],
                    )
                  ],
                ) ,
                Image.asset("assets/images/Walking the Dog.png")

              ],
            ),
          ),
            Container(
            decoration: BoxDecoration(
                color: Color(0xffe5f571),
                borderRadius: BorderRadius.circular(16)
            ),
            height: 168,
            width: 326,
            padding: EdgeInsets.all(14),
            alignment: Alignment.centerLeft,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Positive vibes' , style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff344054)
                    ),),
                    Container(

                      child: Text("Boost your mood with \nPositive vibes" , style: GoogleFonts.inter(
                          fontSize: 16 ,
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_circle , color: Color(0xff0ad13f),),
                        Text("  10 Mins", style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),)
                      ],
                    )
                  ],
                ) ,
                Image.asset("assets/images/Walking the Dog.png")

              ],
            ),
          ) ,
            Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16)
            ),
            height: 168,
            width: 326,
            padding: EdgeInsets.all(14),
            alignment: Alignment.centerLeft,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Positive vibes' , style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff344054)
                    ),),
                    Container(

                      child: Text("Boost your mood with \nPositive vibes" , style: GoogleFonts.inter(
                          fontSize: 16 ,
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_circle , color: Color(0xff0ad13f),),
                        Text("  10 Mins", style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),)
                      ],
                    )
                  ],
                ) ,
                Image.asset("assets/images/Walking the Dog.png")

              ],
            ),
          )].map((i){
            return i ;
          }).toList(),
              options: CarouselOptions(
                onPageChanged: (index, reason) => {
                   appProvider.changeIndex(index)
                },

            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 2,
            enableInfiniteScroll: false,


            enlargeCenterPage: true,
            enlargeFactor: 0.3,

            scrollDirection: Axis.horizontal,
          ) ,
          ),
            DotsIndicator(dotsCount: 3,
    position: appProvider.currentIndex ,
    decorator: DotsDecorator(
    color: Color(0xffD9D9D9), // Inactive color
    activeColor: Color(0xff98A2B3),
    ),),

            Container(
              margin: EdgeInsets.only(left:40, top: 40 , right: 40 , bottom: 40),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exercises" , style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),),
                  Container(
                    child: Row(
                      children: [
                        Text("see more" , style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff027A48) ,
                        ),),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                  ),

                ],
              ) ,
            ),
            Container(

              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Container(
                    width: 151,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Color(0xffF9F5FF),
                        borderRadius: BorderRadius.circular(8)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/Vector.png'),
                        Text("Relaxation" , style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),)
                      ],

                    ),

                  ),
                  Container(
                    width: 151,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Color(0xffFDF2FA),
                        borderRadius: BorderRadius.circular(8)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/Vector (1).png'),
                        Text("Meditation" , style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),)
                      ],

                    ),

                  ),

                ],
              ),
            ),
            Container(

              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Container(
                    width: 151,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFAF5),
                        borderRadius: BorderRadius.circular(8)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/Vector (2).png'),
                        Text("Breathing" , style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),)
                      ],

                    ),

                  ),
                  Container(
                    width: 151,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Color(0xffF0F9FF),
                        borderRadius: BorderRadius.circular(8)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/Group.png'),
                        Text("Yoga" , style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),)
                      ],

                    ),

                  ),

                ],
              ),
            )


          ],
        ),
      ),

    );
  }
}