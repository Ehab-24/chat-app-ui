import 'package:flutter/material.dart';

class AnimBubble extends StatefulWidget {
  
  final double speed;
  
  const AnimBubble({
    Key? key,
    required this.speed
  }) : super(key: key);

  @override
  State<AnimBubble> createState() => _AnimBubbleState();
}
class _AnimBubbleState extends State<AnimBubble> with TickerProviderStateMixin{
  
  late final AnimationController animcontrol;

  @override
  void initState() {
    animcontrol = AnimationController(vsync: this, duration: const Duration(seconds: 5))..repeat(period: Duration(seconds: 5));
    super.initState();
  }

  @override
  void dispose() {
    animcontrol.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return 
    AnimatedBuilder(
      animation: animcontrol,
      child: const CircleAvatar(
        backgroundColor: Colors.red,
        radius: 8,
      ),
      
      builder: (context, child) 
      => Transform.translate(
          offset: Offset(0, -animcontrol.value * animcontrol.value * widget.speed), 
          child: child,
        ),
    );
  }
}