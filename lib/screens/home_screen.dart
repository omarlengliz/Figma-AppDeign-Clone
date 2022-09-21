import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui1/screens/coursedetailscreen.dart';
import 'package:ui1/widgets/my_horizantal.dart';
import 'package:ui1/widgets/my_verticallist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Online" , style: GoogleFonts.roboto(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Master Class" , style: GoogleFonts.roboto(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 22,),
                   SizedBox(
                      height: 349,
                      child:  ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) 
                        {
                          return const MyhorizantalList
                          (
                            startColor: 0xFF9288E4,
                            endColor: 0xFF534EA7,
                            courseHeadline: "Recomanded",
                            courseTitle: 'UI/UX DESIGN \nBEGINNER',
                            courseImage: "assets/img_saly10.png" ,

                            
                          );
                        }
                        
                      
                      )
                      
                      ,
                      
                      ),
                      const SizedBox( height:  34,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CourseScreenDetails()));},
                            child: Text("Free online class" , style: GoogleFonts.roboto(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                          Text("From over 80 lectures " , style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                          ),),
                        ],
                      ),
                      ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return const MyVerticalList(
                            courseDuration: "8 hours",
                            courseTitle: "Flutter Dev",
                            courseImage: "assets/img_saly24.png",
                            courseRating: 3.0
                          );

                        }))
                ],
              )
            ],
        ) ,
      ),
    );
  }
}