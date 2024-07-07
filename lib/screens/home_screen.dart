import 'package:brcompressor/Extrafiles/NavigationRail.dart';
import 'package:brcompressor/Extrafiles/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/home_content.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              children: [
               // navigationrail(selected_index: 0),
                VerticalDivider(thickness: 1, width: 1),
                Expanded(
                  child: HomeContent(),
                )
              ],
            );
          } else {
            return HomeContent();
          }
        },
      ),
    );
  }
}
