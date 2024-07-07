import 'package:brcompressor/Extrafiles/colors.dart';
import 'package:flutter/material.dart';

class navigationrail extends StatelessWidget {
  final int selected_index;
  const navigationrail({super.key,required this.selected_index});

  @override
  Widget build(BuildContext context) {
    return NavigationRail(

      backgroundColor: Colors.black12,
      selectedIndex: selected_index,
      onDestinationSelected: (int index) {
        if (index == 0) {
          Navigator.pushNamed(context, '/');
        } else if (index == 1) {
          Navigator.pushNamed(context, '/about');
        } else if (index == 2) {
          Navigator.pushNamed(context, '/services');
        } else if (index == 3) {
          Navigator.pushNamed(context, '/contact');
        }
      },
      labelType: NavigationRailLabelType.all,
      destinations: [
        NavigationRailDestination(
          selectedIcon: Icon(Icons.home_filled,color: quincy,),
          icon: Icon(Icons.home_outlined),
          label: Text('Home'),
        ),
        NavigationRailDestination(
          indicatorColor: quincy,
          selectedIcon: Icon(Icons.info,color: quincy,),
          icon: Icon(Icons.info_outline,),
          label: Text('About'),
        ),
        NavigationRailDestination(
          selectedIcon: Icon(Icons.work,color: quincy,),
          icon: Icon(Icons.work_outline),
          label: Text('Services'),
        ),
        NavigationRailDestination(
          selectedIcon: Icon(Icons.contact_mail,color: quincy,),
          icon: Icon(Icons.contact_mail_outlined),
          label: Text('Contact'),
        ),
      ],

    );
  }
}
