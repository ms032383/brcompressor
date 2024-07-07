import 'package:brcompressor/Extrafiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeContent extends StatelessWidget {
  final List<String> imgList = [
    'https://lh3.googleusercontent.com/p/AF1QipO0MKsiPVM8FnluknoTSf4yOFSgzvEXNk-hNjzk=s1360-w1360-h1020',
    'https://lh3.googleusercontent.com/p/AF1QipNf0B7d7jeJMUXPG9TJlWlyadwCLSxlwt87KuN-=s1360-w1360-h1020',
    'https://lh3.googleusercontent.com/p/AF1QipNOEjFXdKBRrxFWkSrcXv3CCR4g2bsT6hsLRMIt=s1360-w1360-h1020',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 400,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16/9,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                viewportFraction: 0.8,
              ),
              items: imgList.map((item) => Container(
                color: textt.withOpacity(0.2),
                padding: EdgeInsets.all(2),
                child: Center(
                    child: Image.network(item, fit: BoxFit.cover, width: 1000)
                ),
              )).toList(),
            ),
            SizedBox(height: 16,),
            Text(
              'Welcome to B.R Compressor',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'We are a company that values excellence and innovation. Our mission is to provide the best services to our clients and help them achieve their goals.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
