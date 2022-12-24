import 'package:chat_app_ui/Classes/Message.dart';
import 'package:chat_app_ui/Globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

bool sameSender = false;

class ChatMessageCard extends StatefulWidget {
  
  final int index;

  ChatMessageCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<ChatMessageCard> createState() => _ChatMessageCardState();
}

class _ChatMessageCardState extends State<ChatMessageCard> {

    bool isBold = false;
    bool isItalic = false;

  @override

  Widget build(BuildContext context) {

    final bool isMe = messages[widget.index].sender.id == 0;
    final Message msg = messages[widget.index];

    double topLeftBorder = 40;
    double topRightBorder = 40;
    double bottomLeftBorder = 18; 
    double bottomRightBorder = 18;
    double topMargin = defPadding;

    //Check whether previous sender is the same as current sender.
    if(widget.index == 0){
      sameSender = true;
    }else if(messages[widget.index - 1].sender.id != 0){
      sameSender = msg.sender.id != 0;
    }else{
      sameSender = msg.sender.id == 0;
    }

    //Set container borders.
    if(isMe){
      topLeftBorder = 18;
      bottomRightBorder = 0;
    }else{
      topRightBorder = 18;
      bottomLeftBorder = 0;
    }
    if(sameSender)
    {
      topMargin = 0;
      if(isMe)
      {
        topRightBorder = 0;
      }else{
        topLeftBorder = 0;
      }
    }

    return Container(

      margin: isMe?
      EdgeInsets.only(top: topMargin, bottom: defPadding/2, left: 80, right: 4):
      EdgeInsets.only(top: topMargin, bottom: defPadding/2, right: 80, left: 4),

      padding: const EdgeInsets.symmetric(horizontal: defPadding, vertical: 8),

      decoration: BoxDecoration(

        color: isMe? primaryLight.withGreen(230): secondLight,
        
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(topRightBorder),
          bottomRight: Radius.circular(bottomRightBorder),
          topLeft: Radius.circular(topLeftBorder),
          bottomLeft: Radius.circular(bottomLeftBorder)
        )
      ),

      //Time and Text
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          
          //Time
          Align(
            alignment: isMe? Alignment.topLeft: Alignment.topRight,
            child: Text(
              msg.time,
              
              style: TextStyle(
                color:Colors.blueGrey.shade500,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2
              ),
            ),
          ),
          
          //Text
          Text(
            msg.text,
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 18,
              letterSpacing: 0.8,
              wordSpacing: 1.5,
              fontWeight: isBold? FontWeight.w900: FontWeight.w500,
              fontStyle: isItalic? FontStyle.italic: FontStyle.normal,
            ),
          ),

          isMe?
          BoldAndItalcIcons():
          Align(alignment: Alignment.centerRight, child: HeartIcon(msg)),
        ],
      ),
    );
  }

  GestureDetector HeartIcon(Message msg) {
    return GestureDetector(
    
          onTap: (){
            setState(() {
              msg.isLiked = !msg.isLiked;
            });
          },

          child: msg.isLiked?
          const Icon(
            Icons.favorite,
            color: Colors.red
          ):
          const Icon(
            Icons.favorite_outline,
          )
        );
  }

  Row BoldAndItalcIcons() {
    return Row(
          
          mainAxisAlignment: MainAxisAlignment.end,
          
          children: [
            GestureDetector(
              onTap:(){
                setState(() {
                  isItalic = !isItalic;
                });
              },
              child: Text(
                'I',
                style: GoogleFonts.merriweather(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: isItalic? 
                  const Color.fromARGB(255, 255, 191, 0): Colors.black,
                )
              ),
            ),

            const SizedBox(width: 10,),

            GestureDetector(
              onTap: (){
                setState(() {
                  isBold = !isBold;
                });
              },
              child: Text(
                'B',
                style: GoogleFonts.merriweather(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: isBold? 
                  highlightColor: Colors.black,
                )
              ),
            ),
          ],
        );
  }
}