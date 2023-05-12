import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';

class Description extends StatefulWidget {
  const Description({super.key, required this.title, required this.imgPath});
  final String title;
  final String imgPath;

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  double fontSizecustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade600,
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('information'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                widget.imgPath,
                height: 150,
                width: 400,
              ),
              const SizedBox(height: 5),
              Wrap(
                spacing: 10,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 20;
                      });
                    },
                    child: const Text('Small text'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 40;
                      });
                    },
                    child: const Text('Medium text'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 100;
                      });
                    },
                    child: const Text('Large text'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 200;
                      });
                    },
                    child: const Text('Huge text'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: fontSizecustom,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                baconDescription,
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
