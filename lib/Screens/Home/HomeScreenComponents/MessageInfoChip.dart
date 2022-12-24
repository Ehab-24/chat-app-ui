import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';
import '../../../Classes/Message.dart';

class MessageInfoChip extends StatelessWidget {
  const MessageInfoChip({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {

    final Message msg = messages[index];

    return Row(
      children: [

        CircleAvatar(
          backgroundImage: AssetImage('Images/${msg.sender.imageUrl}'),
          radius: imageradius,
        ),

        const SizedBox(width: 10,),

        //Name and Message hint.
        Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            
            Text(
              msg.sender.name,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
              child: Text(
                msg.text,
                style: TextStyle(
                  color: Colors.blueGrey.shade600,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                overflow: TextOverflow.ellipsis
              ),
            )
          ],
        ),

        const Spacer(),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            //Time
            Text(
              msg.time,
              style: TextStyle(
                color: msg.isread? Colors.grey.shade500: Colors.blueGrey.shade600,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2
              ),
            ),

            const SizedBox(height: 8),

            //NEW box
            if(!msg.isread) 
              Container(

                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),

                decoration: BoxDecoration(
                  color: onprimary,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: blurRadius,
                    )
                  ]
                ),
                child: const Text(
                  'new',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    fontSize: 16
                  ),
                ),
              ),
          ],
        )
      ]
    );
  }
}