import 'package:flutter/material.dart';

class NeuAnimIcon extends StatefulWidget {

  final AnimatedIconData icon;
  final double size;
  final double width;
  final double height;
  final double borderRadius;
  final Color iconColor;
  final Color shadowDark;
  final Color shadowLight;
  final Color backgroundColor;
  final Function onPressed;
  final Duration duration;

  const NeuAnimIcon({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.duration,
    this.size = 30,
    this.width = 50,
    this.height = 50,
    this.borderRadius = 10,
    this.iconColor = Colors.grey,
    this.backgroundColor = const Color.fromARGB(255, 66, 66, 66),
    this.shadowDark = Colors.black,
    this.shadowLight = Colors.white
  }) : super(key: key);

  @override
  State<NeuAnimIcon> createState() => _NeuAnimIconState();
}

class _NeuAnimIconState extends State<NeuAnimIcon> with TickerProviderStateMixin {

  bool isForward = true;
  late AnimationController animcontroller;

  @override
  void initState() {
    animcontroller = AnimationController(vsync: this, duration: widget.duration);
    super.initState();
  }

  @override
  void dispose() {
    animcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        isForward? animcontroller.forward(): animcontroller.reverse();
        isForward = !isForward;
        widget.onPressed;
      },

      child: Container(
        
        width: widget.width,
        height: widget.height,
        alignment: Alignment.center,

        decoration: BoxDecoration(
          
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),

          boxShadow: [
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

        child: AnimatedIcon(
          icon: widget.icon, 
          progress: animcontroller,
          color: widget.iconColor,
          size: widget.size,
        ),
      ),
    );
  }
}
