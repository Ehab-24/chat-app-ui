import 'package:flutter/material.dart';
import '../../../GlobalWidgets/SlideButton.dart';
import '../../../GlobalWidgets/NeuAnimIcon.dart';
import '../../../GlobalWidgets/NeumorphicButton.dart';
import '../../Home/HomeScreenComponents/CategoryList.dart';

class GroupsBody extends StatelessWidget {
  const GroupsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        
        const CategoryList(),


        NeumorphicButton(
          onPressed: () {},
          icon: Icons.mode_night,
          iconSelected: const Color.fromARGB(255, 31, 255, 244),
          backgroundColor: Colors.grey.shade400,
        ),

        NeumorphicButton(
          icon: Icons.mode_night, 
          onPressed: (){},
          iconSelected: const Color.fromARGB(255, 31, 255, 244),
          backgroundColor: Colors.grey.shade400,
          width: 50,
          height: 50,
          borderRadius: 25,
        ),

        NeuAnimIcon(
          onPressed: (){},
          icon: AnimatedIcons.home_menu,
          iconColor: const Color.fromARGB(255, 31, 255, 244),
          backgroundColor: Colors.grey.shade400,
          duration: const Duration(milliseconds: 400),
        ),

        SlideButton(
          duration: const Duration(milliseconds: 500),
          width: 80,
          borderRadius: BorderRadius.circular(10),
          curve: Curves.fastOutSlowIn,
          backgroundColor1: Colors.grey.shade300,
          backgroundColor2: Colors.grey.shade400,
          text: 'Hello',
          selectedColor: const Color.fromARGB(255, 31, 255, 244),
        ),

        const SizedBox(height: 150,)
      ],
    );
  }
}
