import 'package:flutter/material.dart';
import 'package:my_app/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CardWidget(title: 'Rocket',imagePath: 'images/project.png',),
            Row(
              children: const [
                Expanded(
                  child: CardWidget(title: 'Space',
                  imagePath: 'images/solar-system.png',
                )
                ),
                Expanded(
                  child:CardWidget(title: 'Travel',
                  imagePath: 'images/travel.png',
                )
                ),
              ],
            ),
            const CardWidget(title: 'Research',
              imagePath: 'images/research.png',
            ),
          ],
        ),
      ),
    );
  }
}
