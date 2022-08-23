import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({
    required this.title,
    required this.description,
    this.iconData,
  });

  final String title;
  final String description;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (iconData == null)
            Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.only(top: 10, left: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            )
          else
            Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.only(top: 10, left: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Icon(iconData),
            ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  title,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  description,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
