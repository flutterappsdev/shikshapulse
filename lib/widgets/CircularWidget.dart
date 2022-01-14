import 'package:flutter/material.dart';

class CircularWidget extends StatelessWidget {
  //const CircularWidget({Key? key}) : super(key: key);
  CircularWidget({Key? key, @required this.imageurl, @required this.label,  @required this.onPress}) : super(key: key) ;

  // ignore: empty_constructor_bodies
  final String? imageurl;
  final String? label;
  final VoidCallback? onPress;
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          CircleAvatar(
            radius: 20,
            child: Image.asset(imageurl!),
          ),
          Text(label!,style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
