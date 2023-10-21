import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

class ScreenTwo extends StatelessWidget {

  static const String routeName = 'two';

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30 , top: 40 , right: 30, bottom: 40),
                child:  Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage("assets/images/Ellipse 10.png")
                          )
                      ) , ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("  Hello, jade",style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),),
                          SizedBox(height: 10,),
                          Text("  Ready to workout?",style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),)
                        ],
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
                margin: EdgeInsets.only(bottom: 60),
                width: 326,
                height: 82,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffF8F9FC)
                ),
                child: Row(
                  children: [
                    Expanded(child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/Icon (1).png"),
                            Text("  Heart Rate" , style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                            ),)
                          ],
                        ),
                        Text("81 BPM" , style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ))
                    ,
                    Container(
                      margin: EdgeInsets.only(left: 10 , right: 10),
                      width: 1,
                      height: 50,
                      color: Color(0xffD9D9D9),
                    ),
                    Expanded(child:   Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/Icon (2).png"),
                            Text("  to do" , style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                            ),)
                          ],
                        ),
                        Text("32.5%" , style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ))
                  ,
                    Container(
                      margin: EdgeInsets.only(left: 10 , right: 10),
                      width: 1,
                      height: 50,
                      color: Color(0xffD9D9D9),
                    ),
                    Expanded(child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/Vector (4).png"),
                            Text("  calo" , style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                            ),)
                          ],
                        ),
                        Text("1000 cal" , style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ))
                   ,
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40, bottom: 20),
                alignment: Alignment.centerLeft,
                child: Text("Workout Programs" ,style: GoogleFonts.inter(

                  fontWeight: FontWeight.w600,
                  fontSize: 16

                ),  ),
              ),
              const TabBar(

                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                dividerColor: Colors.black,

                tabs: [
                Tab(text: 'All type', ),
                Tab(text: 'Full body',),
                Tab(text: 'Upper',),
                Tab(text: 'Lower',)
              ],

              ),
             Column(
               children: [
                 Container(

                   width: 326,
                   height: 500,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8)
                   ),
                   child: TabBarView(

                       children: [
                         Column(
                           children: [
                             Container(

                               margin: EdgeInsets.only(top: 20) ,
                               padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                               decoration: BoxDecoration(
                                   color: Color(0xffEAECF5),
                                   borderRadius: BorderRadius.circular(8)

                               ),


                               alignment: Alignment.centerLeft,

                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(top: 10 , bottom: 10),
                                         padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                                         width: 68,
                                         height: 40,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(999)
                                         ),
                                         child: Text("7 Days"),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("Morning Yoga" , style: GoogleFonts.inter(
                                             fontSize: 20 ,
                                             fontWeight: FontWeight.w600
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("improve mental focus" , style: GoogleFonts.inter(
                                             fontSize: 16 ,
                                             fontWeight: FontWeight.w400
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),
                                         child:  Row(
                                           children: [
                                             Icon(Icons.alarm_outlined , ),
                                             Text("  30 Mins", style: GoogleFonts.inter(
                                                 fontSize: 14,
                                                 fontWeight: FontWeight.w400
                                             ),)
                                           ],
                                         ),
                                       )

                                     ],
                                   ) ,
                                   Expanded(child: Image.asset("assets/images/[removal 2.png"))

                                 ],
                               ),
                             ) ,
                             Container(

                               margin: EdgeInsets.only(top: 20) ,
                               padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                               decoration: BoxDecoration(
                                   color: Color(0xffEAECF5),
                                   borderRadius: BorderRadius.circular(8)

                               ),


                               alignment: Alignment.centerLeft,

                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(top: 10 , bottom: 10),
                                         padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                                         width: 68,
                                         height: 40,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(999)
                                         ),
                                         child: Text("3 Days"),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("Blank exercise" , style: GoogleFonts.inter(
                                             fontSize: 20 ,
                                             fontWeight: FontWeight.w600
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("improve your stability" , style: GoogleFonts.inter(
                                             fontSize: 16 ,
                                             fontWeight: FontWeight.w400
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),
                                         child:  Row(
                                           children: [
                                             Icon(Icons.alarm_outlined , ),
                                             Text("  30 Mins", style: GoogleFonts.inter(
                                                 fontSize: 14,
                                                 fontWeight: FontWeight.w400
                                             ),)
                                           ],
                                         ),
                                       )

                                     ],
                                   ) ,
                                   Expanded(child: Image.asset("assets/images/pngwing 1.png"))

                                 ],
                               ),
                             ) ,
                           ],
                         ),
                         Column(
                           children: [
                             Container(

                               margin: EdgeInsets.only(top: 20) ,
                               padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                               decoration: BoxDecoration(
                                   color: Color(0xffe3d4b1),
                                   borderRadius: BorderRadius.circular(8)

                               ),


                               alignment: Alignment.centerLeft,

                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(top: 10 , bottom: 10),
                                         padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                                         width: 68,
                                         height: 40,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(999)
                                         ),
                                         child: Text("10 Days"),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("Morning Yoga" , style: GoogleFonts.inter(
                                             fontSize: 20 ,
                                             fontWeight: FontWeight.w600
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("improve mental focus" , style: GoogleFonts.inter(
                                             fontSize: 16 ,
                                             fontWeight: FontWeight.w400
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),
                                         child:  Row(
                                           children: [
                                             Icon(Icons.alarm_outlined , ),
                                             Text("  30 Mins", style: GoogleFonts.inter(
                                                 fontSize: 14,
                                                 fontWeight: FontWeight.w400
                                             ),)
                                           ],
                                         ),
                                       )

                                     ],
                                   ) ,
                                   Expanded(child: Image.asset("assets/images/[removal 2.png"))

                                 ],
                               ),
                             ) ,
                             Container(

                               margin: EdgeInsets.only(top: 20) ,
                               padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                               decoration: BoxDecoration(
                                   color: Color(0xffe3d4b1),
                                   borderRadius: BorderRadius.circular(8)

                               ),


                               alignment: Alignment.centerLeft,

                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(top: 10 , bottom: 10),
                                         padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                                         width: 68,
                                         height: 40,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(999)
                                         ),
                                         child: Text("8 Days"),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("Blank exercise" , style: GoogleFonts.inter(
                                             fontSize: 20 ,
                                             fontWeight: FontWeight.w600
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("improve your stability" , style: GoogleFonts.inter(
                                             fontSize: 16 ,
                                             fontWeight: FontWeight.w400
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),
                                         child:  Row(
                                           children: [
                                             Icon(Icons.alarm_outlined , ),
                                             Text("  30 Mins", style: GoogleFonts.inter(
                                                 fontSize: 14,
                                                 fontWeight: FontWeight.w400
                                             ),)
                                           ],
                                         ),
                                       )

                                     ],
                                   ) ,
                                   Expanded(child: Image.asset("assets/images/pngwing 1.png"))

                                 ],
                               ),
                             ) ,
                           ],
                         ),
                         Column(
                           children: [
                             Container(

                               margin: EdgeInsets.only(top: 20) ,
                               padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                               decoration: BoxDecoration(
                                   color:  Color(0xffbdd1f1),
                                   borderRadius: BorderRadius.circular(8)

                               ),


                               alignment: Alignment.centerLeft,

                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(top: 10 , bottom: 10),
                                         padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                                         width: 68,
                                         height: 40,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(999)
                                         ),
                                         child: Text("11 Days"),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("Morning Yoga" , style: GoogleFonts.inter(
                                             fontSize: 20 ,
                                             fontWeight: FontWeight.w600
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("improve mental focus" , style: GoogleFonts.inter(
                                             fontSize: 16 ,
                                             fontWeight: FontWeight.w400
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),
                                         child:  Row(
                                           children: [
                                             Icon(Icons.alarm_outlined , ),
                                             Text("  30 Mins", style: GoogleFonts.inter(
                                                 fontSize: 14,
                                                 fontWeight: FontWeight.w400
                                             ),)
                                           ],
                                         ),
                                       )

                                     ],
                                   ) ,
                                   Expanded(child: Image.asset("assets/images/[removal 2.png"))

                                 ],
                               ),
                             ) ,
                             Container(

                               margin: EdgeInsets.only(top: 20) ,
                               padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                               decoration: BoxDecoration(
                                   color: Color(0xffbdd1f1),
                                   borderRadius: BorderRadius.circular(8)

                               ),


                               alignment: Alignment.centerLeft,

                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(top: 10 , bottom: 10),
                                         padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                                         width: 68,
                                         height: 40,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(999)
                                         ),
                                         child: Text("6 Days"),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("Blank exercise" , style: GoogleFonts.inter(
                                             fontSize: 20 ,
                                             fontWeight: FontWeight.w600
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("improve your stability" , style: GoogleFonts.inter(
                                             fontSize: 16 ,
                                             fontWeight: FontWeight.w400
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),
                                         child:  Row(
                                           children: [
                                             Icon(Icons.alarm_outlined , ),
                                             Text("  30 Mins", style: GoogleFonts.inter(
                                                 fontSize: 14,
                                                 fontWeight: FontWeight.w400
                                             ),)
                                           ],
                                         ),
                                       )

                                     ],
                                   ) ,
                                   Expanded(child: Image.asset("assets/images/pngwing 1.png"))

                                 ],
                               ),
                             ) ,
                           ],
                         ),
                         Column(
                           children: [
                             Container(

                               margin: EdgeInsets.only(top: 20) ,
                               padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                               decoration: BoxDecoration(
                                   color: Color(0xffc6ead0),
                                   borderRadius: BorderRadius.circular(8)

                               ),


                               alignment: Alignment.centerLeft,

                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(top: 10 , bottom: 10),
                                         padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                                         width: 68,
                                         height: 40,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(999)
                                         ),
                                         child: Text("15 Days"),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("Morning Yoga" , style: GoogleFonts.inter(
                                             fontSize: 20 ,
                                             fontWeight: FontWeight.w600
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("improve mental focus" , style: GoogleFonts.inter(
                                             fontSize: 16 ,
                                             fontWeight: FontWeight.w400
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),
                                         child:  Row(
                                           children: [
                                             Icon(Icons.alarm_outlined , ),
                                             Text("  30 Mins", style: GoogleFonts.inter(
                                                 fontSize: 14,
                                                 fontWeight: FontWeight.w400
                                             ),)
                                           ],
                                         ),
                                       )

                                     ],
                                   ) ,
                                   Expanded(child: Image.asset("assets/images/[removal 2.png"))

                                 ],
                               ),
                             ) ,
                             Container(

                               margin: EdgeInsets.only(top: 20) ,
                               padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                               decoration: BoxDecoration(
                                   color: Color(0xffc6ead0),
                                   borderRadius: BorderRadius.circular(8)

                               ),


                               alignment: Alignment.centerLeft,

                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(top: 10 , bottom: 10),
                                         padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                                         width: 68,
                                         height: 40,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(999)
                                         ),
                                         child: Text("5 Days"),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("Blank exercise" , style: GoogleFonts.inter(
                                             fontSize: 20 ,
                                             fontWeight: FontWeight.w600
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),

                                         child: Text("improve your stability" , style: GoogleFonts.inter(
                                             fontSize: 16 ,
                                             fontWeight: FontWeight.w400
                                         ),),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 10),
                                         child:  Row(
                                           children: [
                                             Icon(Icons.alarm_outlined , ),
                                             Text("  30 Mins", style: GoogleFonts.inter(
                                                 fontSize: 14,
                                                 fontWeight: FontWeight.w400
                                             ),)
                                           ],
                                         ),
                                       )

                                     ],
                                   ) ,
                                   Expanded(child: Image.asset("assets/images/pngwing 1.png"))

                                 ],
                               ),
                             ) ,
                           ],
                         ),
                       ]),
                 ),

               ],
             )

            ],
          ),
        ),
      ),
    );
  }
}
