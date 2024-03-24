import 'package:flutter/material.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard(
      {required this.imgLoc,
      required this.label,
      required this.onPressed,
      super.key});
  final String imgLoc, label;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          SizedBox(
            height: 166,
            width: 166,
            child: Card(
              child: Image.asset(
                fit: BoxFit.cover,
                alignment: Alignment.center,
                imgLoc,
              ),
            ),
          ),
          Text(
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 16,
              color: Color.fromRGBO(224, 171, 67, 1),
            ),
            label,
          ),
        ],
      ),
    );
  }
}
