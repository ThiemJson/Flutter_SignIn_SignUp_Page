import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  var pathImages = "";
  var sizeOfImage = 0.0;
  CircleImage({this.pathImages, this.sizeOfImage});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: sizeOfImage,
        height: sizeOfImage,
        child: CircleAvatar(
          backgroundImage: ExactAssetImage(pathImages),
          minRadius: 90,
          maxRadius: 150,
        ),
      ),
    );
  }
}
