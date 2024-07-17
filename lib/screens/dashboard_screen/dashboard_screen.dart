import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:exchange_app/constants/app_constants.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(preferredSize: Size.fromHeight(20), child: SizedBox()),
        centerTitle: true,
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
    ),
        backgroundColor: Colors.amber,
        title: Text(
                    'Trade Crypto',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       shape: BoxShape.rectangle,
            //       color: Colors.black,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            //       child: Text(
            //         'Trade Crypto',
            //         style: TextStyle(
            //           fontSize: 25,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.yellow,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: CarouselSlider(
                    items: AppConstants.images.map((currItem) {
                      return Container(
                        height: 400,
                        width: 600,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.black,
                          image: DecorationImage(
                            image: NetworkImage(currItem['images']),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 130,
                      aspectRatio: 16 / 8,
                      viewportFraction: 0.3,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      enlargeCenterPage: true,
                      enlargeFactor: 0.2,
                      reverse: true,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: SizedBox(
                height: 250,
                width: 430,
                child: AnotherCarousel(
                  images: const [
                    NetworkImage("https://yoex.live/static/media/card_silder_a.9102b551f06db2a60499.png"),
                    NetworkImage("https://yoex.live/static/media/card_silder_b.3d49b1a7dc539ec06f64.jpg"),
                    NetworkImage("https://yoex.live/static/media/card_silder_c.84176b74b0990ee57be6.jpg"),
                    NetworkImage("https://yoex.live/static/media/card_silder_a.9102b551f06db2a60499.png"),
                  ],
                  dotSize: 6,
                  indicatorBgPadding: 5.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 240, 0),
              child: Text(
                'Trending Assets',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 432,
              height: 432,
              decoration: BoxDecoration(
                color: Color.fromARGB(31, 144, 143, 143),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 300, 0),
                    child: Text(
                      'Hot List',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 300, 0),
                    child: Container(
                      height: 8.0,
                      width: 125,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 32, 215, 248),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: AppConstants.icons.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> currItem = AppConstants.icons[index];
                        return ListTile(
                          leading: Image.asset(
                            currItem['icons'],
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          title: Text(currItem['title1']),
                          subtitle: Text(currItem['title2'] ?? '',
                          style: TextStyle(
                            color: Colors.black38
                          ),
                          ),
                          trailing: Column(
                            children: [
                              Text(currItem['dollar'],
                              style: TextStyle(
                            fontSize: 18
                          ),
                              ),
                              Text(currItem['avg'],
                              style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 30, 212, 36)
                          ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}








// Container(
//               width: 500,
//               height: 400,
//                child: ListView.builder(
//                             scrollDirection: Axis.vertical,
//                             itemCount: AppConstants.icons.length,
                            
                           
//                              itemBuilder: ((context, index) {
//                               Map<String, dynamic> currItem = AppConstants.icons[index];
//                                 return Row(
//                                   children: [
//                                     Column(
//                                        children: [
//                                          Row(
                                          
//                                           children: [
//                                             ListTile(
//                                               leading: Padding(
//                                                 padding: const EdgeInsets.only(left: 20.0, right: 10.0),
//                                                 child: Image.asset(currItem['icons'],
                                                
//                                                 width: 60,
//                                                 height: 60,
//                                                 fit: BoxFit.cover,
//                                                 ),
//                                               ),
//                                             ),

//                                             Text(currItem['title1'],
//                                             style: TextStyle(
//                                               fontSize: 15,
//                                             ),),
                                            
//                                           ],
//                                          ),
                                       
//                                        ],
//                                      ),
//                                   ],
//                                 );
                                
//                               })),
//              ),
//                 ],
//               )
//              ),