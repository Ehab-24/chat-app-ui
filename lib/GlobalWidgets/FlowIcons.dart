import 'dart:math';

import 'package:chat_app_ui/GlobalWidgets/NeumorphicButton.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';

const double ButtonSize = 60;

class FlowIcons extends StatefulWidget {
  const FlowIcons({
    Key? key,
  }) : super(key: key);

  @override
  State<FlowIcons> createState() => _FlowIconsState();
}

class _FlowIconsState extends State<FlowIcons> with SingleTickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(duration: const Duration(milliseconds: 200), vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flow(

      delegate: FlowIconsDelegate(controller: controller),

      children: <IconData>[
          Icons.notifications,
          Icons.wb_sunny,
          Icons.volume_up,
          Icons.nightlight_round,
          Icons.menu,
      ].map<Widget>(buildItem).toList(),
    );
  }

  // NeumorphicButton buildItem(IconData icon) =>
  //   NeumorphicButton(
  //     icon: icon, 
  //     onPressed: (){
  //       if(controller.status == AnimationStatus.completed){
  //         controller.reverse();
  //       }else{
  //         controller.forward();
  //       }
  //     },
  //     iconSelected: selectedColor,
  //     width: 45,
  //     height: 45,
  //     backgroundColor: Colors.grey.shade400,
  //   );

  Widget buildItem(IconData icon) =>
    SizedBox(
      width: ButtonSize,
      height: ButtonSize,
      child: FloatingActionButton(
        onPressed: icon == Icons.menu? (){
          if(controller.status == AnimationStatus.completed){
            controller.reverse();
          }else{
            controller.forward();
          }
        } : (){},
        elevation: 5,
        backgroundColor: Colors.amber,
        splashColor: Colors.white70,
        child: Icon(icon),
      ),
    );
}

class FlowIconsDelegate extends FlowDelegate {
  final Animation<double> controller;

  const FlowIconsDelegate({required this.controller})
  : super(repaint: controller);

  @override
  void paintChildren(FlowPaintingContext context) {

    int n = context.childCount;
    double maxx = context.size.width, maxy = context.size.height;
    double startY = maxy - 90, startX = maxx - 80;
    double radius = 140 * controller.value;

    for(int i = 0; i < n; i++) {

      final bool isLastItem = i == n-1;
      
      double theta = i*pi*0.5/(n-2),
            x = isLastItem? startX: startX - (radius * cos(theta)),
            y = isLastItem? startY: startY - (radius*sin(theta));

      context.paintChild(
        i,
        transform: Matrix4.identity()
        ..translate(x, y, 0)
        ..translate(ButtonSize/2, ButtonSize/2, 0)
        ..rotateZ(pi * (1 - controller.value))
        ..scale(isLastItem? 1.0: controller.value)
        ..translate(-ButtonSize/2, -ButtonSize/2, 0)
      );
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;
}