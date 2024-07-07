import 'package:brcompressor/Extrafiles/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,

      backgroundColor: textt,
      title: Text('B.R Compressor',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
      actions: MediaQuery.of(context).size.width > 600
          ? [
        Padding(
          padding: const EdgeInsets.all(12),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text('Home', style: TextStyle(color: Colors.white)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            child: Text('About', style: TextStyle(color: Colors.white)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/services');
            },
            child: Text('Services', style: TextStyle(color: Colors.white)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/contact');
            },
            child: Text('Contact', style: TextStyle(color: Colors.white)),
          ),
        ),
      ]
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
