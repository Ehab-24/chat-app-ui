import 'package:chat_app_ui/GlobalWidgets/FlowIcons.dart';
import 'package:chat_app_ui/Screens/Friends/Components/FriendsBody.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import '../Home/HomeScreenComponents/MyAppBar.dart';


const Color clr = Color.fromARGB(255, 26, 43, 108);
const Color clr2 = Color.fromARGB(255, 66, 66, 66);

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey.shade400,

      appBar: const MyAppBar(),
      
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,

          children: [

            CourseCard(title: 'Data Structures', subtitle: 'Better than apples.',),
          ],
        ),
      )
    );
  }
}


class CardPair extends StatelessWidget {
  const CardPair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [

        CourseCard(title: 'Data Structures', subtitle: 'Better than apples.',),

        Spacer(),

        CourseCard(title: 'Algorithms', subtitle: 'Viewer descretion is advised.',),
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  
  final String title;
  final String subtitle;
  
  const CourseCard({
    Key? key,
    required this.title,
    required this.subtitle
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;

    return FlipCard(
      
      front: Container(

        width: w*0.4,
        padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),

        decoration: BoxDecoration(
          
          gradient: LinearGradient(
            colors: [Colors.grey.shade100, Colors.grey.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter
          ),

          boxShadow: const [
            BoxShadow(
              offset: Offset(12,12),
              color: Colors.black,
              blurRadius: 20,
            ),
            BoxShadow(
              offset: Offset(-7,-7),
              color: Colors.white,
              blurRadius: 14,
            )
          ],
        ),

      //Components.
        child: Column(

          children: [

            Container(
              height: w,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('Images/portrait1.jpg')),
              ),
            ),

            Text(
              title,
              style: const TextStyle(
                fontSize: 19,
                color: clr,
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),
            ),

            const Divider(thickness: 3),

            Text(
              subtitle,
              style: const TextStyle(
                color: clr2,
                fontSize: 14,
                letterSpacing: 1
              ),
            )
          ],
        ),
      ), 

  //~~BACK~~
      back: Container(

       
      ), 
    );
  }
}
