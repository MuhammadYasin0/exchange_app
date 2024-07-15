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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  child: Text('Trade Crypto',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow
                  ),
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),

            SizedBox(height: 10,),
           
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
                      aspectRatio: 16/8,
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
             SizedBox(height: 30,),

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
                                             NetworkImage(
                                                 "https://yoex.live/static/media/card_silder_a.9102b551f06db2a60499.png")
                                           ],
                                           dotSize: 6,
                                           indicatorBgPadding: 5.0,
                           ),
                         ),
             ),

             Padding(
               padding: const EdgeInsets.fromLTRB(0, 20, 240, 0),
               child: Text('Trending Assets',
               style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
               ),
               ),
             ),
             
          ],
        ),
      ),
    );
  }
}
