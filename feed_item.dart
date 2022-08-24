import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({
    required this.title,
    required this.description,
    required this.image_data,
  });

  final String title;
  final String description;
  final String image_data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Color.fromARGB(255, 250, 230, 238),
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 212, 212, 212),
              borderRadius: BorderRadius.circular(12.0),
            ),
            height: 140,
            child: FittedBox(fit: BoxFit.fill, child: Image.asset(image_data)),
          ),
          //Container(,alignment: Alignment.centerLeft, child: Text('Title 1')),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                title),
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text(style: TextStyle(fontSize: 10), description)),
          const Divider(
            height: 1.5,
          )
        ],
      ),
    );
  }
}

/**
 * 
 */
