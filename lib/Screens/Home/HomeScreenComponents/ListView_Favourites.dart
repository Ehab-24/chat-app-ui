import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';

class ListView_Favourites extends StatelessWidget {
  const ListView_Favourites({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      
      height: size.height * 0.13,

      child: ListView.builder(

        padding: const EdgeInsets.only(left: defPadding),
        
        scrollDirection: Axis.horizontal,
        itemCount: favourites.length,

        itemBuilder: (BuildContext context, int index) =>
          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 18),

            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('Images/${favourites[index].imageUrl}'),
                  radius: imageradius,
                ),

                Text(
                  favourites[index].name,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold
                  )                          
                )
              ],
            ),
          )
      ),
    );
  }
}