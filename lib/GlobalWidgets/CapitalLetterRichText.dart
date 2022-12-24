import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';

class CapitalLetterRichText extends StatelessWidget {

  final String firstletter;
  final String word;
  final double size1;
  final double size2;
  final Color color1;
  final Color color2;

  const CapitalLetterRichText({
    Key? key,
    required this.firstletter,
    required this.word,
    this.size1 = 22,
    this.size2 = 18,
    this.color1 = primaryDark,
    this.color2 = primaryText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [

          TextSpan(
            text: firstletter,
            style: TextStyle(
              color: color1,
              letterSpacing: 1.2,
              fontSize: size1,
              fontWeight: FontWeight.bold
            ),
          ),
          TextSpan(
            text: word,
            style: TextStyle(
              color: color2,
              letterSpacing: 1.2,
              fontSize: size2,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}