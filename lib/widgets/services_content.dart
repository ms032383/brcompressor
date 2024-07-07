import 'package:flutter/material.dart';
import '../models/service.dart';
import '../widgets/service_card.dart';


class ServicesContent extends StatelessWidget {

  final List<Service> services = [
    Service(name: 'Service 1', description: 'Description for service 1', imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipO0MKsiPVM8FnluknoTSf4yOFSgzvEXNk-hNjzk=s1360-w1360-h1020'),
    Service(name: 'Service 2', description: 'Description for service 2', imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipOCE27NeMHaTpeSxtcAZqdwKzt8PlWGbL_aMwHf=s1360-w1360-h1020'),
    Service(name: 'Service 3', description: 'Description for service 3', imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipN-6u66o9-XAJKtGPZttnKO-Opl2GXBePeR34QV=s1360-w1360-h1020'),
    // Add more services here
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 600 ? 3 : 2;

    return Column(
      children: [
        SizedBox(height: 20),
        Center(
          child: Text(
            'Services',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(16.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 32,
              mainAxisSpacing: 32,
            ),
            itemCount: services.length,
            itemBuilder: (context, index) {
              return ServiceCard(service: services[index]);
            },
          ),
        ),

      ],
    );
  }
}
