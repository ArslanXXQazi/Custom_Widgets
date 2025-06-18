import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  Color? color;
  CustomBackButton({super.key,this.color});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){Navigator.pop(context);},
        icon: Icon(Icons.arrow_back,color: color)
    );
  }
}
