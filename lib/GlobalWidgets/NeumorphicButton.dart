import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeumorphicButton extends StatefulWidget {
  
  final Color shadowLight;
  final Color shadowDark;
  final Color backgroundColor;
  final Color iconSelected;
  final Color iconDefault;
  final IconData icon;
  final Function onPressed;
  final double height;
  final double width;
  final double borderRadius;
  
  const NeumorphicButton({
    Key? key,
    this.backgroundColor = const Color.fromARGB(255, 66, 66, 66),
    this.shadowDark = Colors.black,
    this.shadowLight = Colors.white,
    this.iconDefault = const Color.fromARGB(255,66,66,66),
    this.iconSelected = Colors.white,
    required this.icon,
    required this.onPressed,
    this.borderRadius = 8,
    this.height = 40,
    this.width = 40
  }) : super(key: key);
  
  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {

  static bool isselected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        setState(() {
          widget.onPressed;
          isselected = !isselected;
        });
      },

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
                
        width: widget.width,
        height: widget.height,

        decoration: BoxDecoration(

          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),

          boxShadow: isselected? [
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
          ]: [
            BoxShadow(
              blurRadius: 8,
              offset: const Offset(3,3),
              color: widget.shadowDark,
            ),
            BoxShadow(
              blurRadius: 5,
              offset: const Offset(-3,-3),
              color: widget.shadowLight,
            ),
          ]
        ),

        child: Icon(
          widget.icon,
          color: isselected? widget.iconSelected: widget.iconDefault, 
        ),
      ),
    );
  }
}