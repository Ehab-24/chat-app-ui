import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class SlideButton extends StatefulWidget {
  
  final Color backgroundColor1;
  final Color backgroundColor2;
  final Color selectedColor;
  final Color defaultColor;
  final Color shadowLight;
  final Color shadowDark;
  final double height;
  final double width;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final Duration duration;
  final Curve curve;
  final Alignment alignment;
  final String text;

  const SlideButton({
    Key? key,
    required this.duration,
    this.backgroundColor1 = Colors.white,
    this.backgroundColor2 = Colors.white,
    this.selectedColor = Colors.blue,
    this.defaultColor = const Color.fromARGB(255,66,66,66),
    this.shadowDark = Colors.black,
    this.shadowLight = Colors.white,
    this.height = 40,
    this.width = 40,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.borderRadius = BorderRadius.zero,
    this.curve = Curves.linear,
    this.alignment = Alignment.center,
    this.text = '',
    this.fontSize = 20,
    this.fontWeight = FontWeight.w300,
  }) : super(key: key);

  @override
  State<SlideButton> createState() => _SlideButtonState();
}

class _SlideButtonState extends State<SlideButton> {

  static bool isselected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        setState(() {
          isselected = !isselected;
        });
      },

      child: AnimatedContainer(
    
        duration: widget.duration,
        curve: widget.curve,

        height: isselected? widget.height: widget.height - 4,
        width: isselected? widget.width: widget.width - 6,

        margin: isselected? const EdgeInsets.fromLTRB(0, 0, 200, 0): widget.margin,
        padding: widget.padding,
        alignment: widget.alignment,
    
        decoration: BoxDecoration(
          
          //color: widget.backgroundColor1,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              widget.backgroundColor1,
              widget.backgroundColor2,
            ]
          ),

          boxShadow: isselected? [
            BoxShadow(
              blurRadius: 8,
              offset: const Offset(3,3),
              color: widget.shadowDark
            ),
            BoxShadow(
              blurRadius: 5,
              offset: const Offset(-3,-3),
              color: widget.shadowLight,
            ),
          ]: [
            BoxShadow(
              blurRadius: 1.5,
              offset: const Offset(3,3),
              color: widget.shadowDark.withOpacity(0.7),
              inset: true,
            ),
            BoxShadow(
              blurRadius: 2,
              offset: const Offset(-3,-3),
              color: widget.shadowLight,
              inset: true,
            ),
          ],

          borderRadius: widget.borderRadius,
        ),
    
        child: Text(
          widget.text,
          style: TextStyle(
            color: isselected? widget.selectedColor: widget.defaultColor,
            fontSize: isselected? widget.fontSize + 5 : widget.fontSize,
            fontWeight: widget.fontWeight,
          ),
        ),
      ),
    );
  }
}