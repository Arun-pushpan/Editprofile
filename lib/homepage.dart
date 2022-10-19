import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'rout_page.dart'as route;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        flexibleSpace: Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: <Color>[Colors.teal.shade900,Colors.black]
            )
          ),
        ),
        title: Text("GEOGRAF",
          style:TextStyle(fontWeight:FontWeight.w900,
              fontSize:25),
        ),
        ),


      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: new Alignment(2, 2),
                    end: new Alignment(0.5, 0.5),
                    colors: [
                      Colors.teal,
                      Colors.black,

                    ],
                    tileMode: TileMode.mirror),
              ), child: Text("GEOGRAF",style:TextStyle(fontWeight:FontWeight.w900,
                fontSize:25,color: Colors.white),),

            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, route.appSettings);
              },
              title: Text("Settings",style:TextStyle(fontWeight:FontWeight.w900,
               fontSize:25)),
              leading:Icon(Icons.settings,color: Colors.black,size: 35,),

            ),
            ListTile(
              title: Text("Favourite",style:TextStyle(fontWeight:FontWeight.w900,
                  fontSize:25)),
              leading:Icon(Icons.favorite,color: Colors.redAccent,size: 35),

            ),
            ListTile(
              title: Text("Language",style:TextStyle(fontWeight:FontWeight.w900,
                  fontSize:25)),
              leading:Icon(Icons.language,color: Colors.black,size: 35),

            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, route.notifications);
              },
              title: Text("Notifications",
                  style:TextStyle(fontWeight:FontWeight.w900,
                  fontSize:25)),
              leading:Icon(Icons.circle_notifications,color: Colors.teal,size: 35),

            ),
            ListTile(
              title: Text("About",style:TextStyle(fontWeight:FontWeight.w900,
                  fontSize:25)),
              leading:Icon(Icons.edit,color: Colors.black,size: 35),

            ),
    ListTile(

             onTap: (){
               Navigator.pushNamed(context, route.loginPage);
             },
              title: Text("Logout",style:TextStyle(fontWeight:FontWeight.w900,
               fontSize:25)),
               leading:Icon(Icons.logout,color: Colors.blue,size: 35),
           ),

          ],

        ),

      ),

      body: ListView(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, route.places);
            },

            child: CarouselSlider(

                items: [

                  //1st Image of Slider
                  Container(
                    child: Image.asset('assets/img1.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),

                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    child:  Image.asset('assets/img2.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    child:  Image.asset('assets/img3.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    child:  Image.asset('assets/img4.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    child:  Image.asset('assets/img5.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
                //Slider Container properties
                options: CarouselOptions(
                  height: 230.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.easeInOutCubicEmphasized,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  viewportFraction: 0.8,
                )
            ),
          ),


          GestureDetector(
          onTap: (){
          Navigator.pushNamed(context, route.foods);
          },
            child: CarouselSlider(

                items: [

                  //1st Image of Slider
                  Container(
                    child: Image.asset('assets/img6.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),

                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    child:  Image.asset('assets/img7.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    child:  Image.asset('assets/img8.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    child:  Image.asset('assets/img9.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    child: Image.asset('assets/img10.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
                //Slider Container properties
                options: CarouselOptions(
                  height: 230.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.easeInOutCubicEmphasized,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  viewportFraction: 0.8,
                )
            ),
          ),


          GestureDetector(
                onTap: (){
                Navigator.pushNamed(context, route.festivals);
                },
            child: CarouselSlider(

                items: [

                  //1st Image of Slider

                  Container(
                    child:  Image.asset('assets/img11.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),

                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    child:  Image.asset('assets/img12.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    child:  Image.asset('assets/img13.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    child:  Image.asset('assets/img14.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    child: Image.asset('assets/img15.jpg'),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
                //Slider Container properties
                options: CarouselOptions(

                  height: 230.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.easeInOutCubicEmphasized,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  viewportFraction: 0.8,
                )
            ),
          ),

        ],
      ),

        );






  }
}
