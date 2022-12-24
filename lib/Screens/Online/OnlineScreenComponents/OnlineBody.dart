import 'package:chat_app_ui/GlobalWidgets/CapitalLetterRichText.dart';
import 'package:chat_app_ui/Screens/Online/OnlineScreenComponents/ListView_Onlines.dart';
import 'package:chat_app_ui/Screens/Online/OnlineScreenComponents/ListView_RecentOnlines.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';

class OnlineBody extends StatelessWidget {
  const OnlineBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      //Current
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: primaryLight,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            topRight: Radius.circular(radius)
          ),
        ),
    
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
              
                myDividier(),
              
                Header_Current(),
              
                const ListView_Onlines(),
              
                myDividier(),
              
                Header_Recent(),
              
                const ListView_RecentOnlines(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

CapitalLetterRichText Header_Recent() => const CapitalLetterRichText(firstletter: 'R', word: 'ecent',);

CapitalLetterRichText Header_Current() => const CapitalLetterRichText(firstletter: 'C', word: 'urrent',);

Divider myDividier() => const Divider(
                color: primaryDark,
                height: 60,
                indent: 40,
                endIndent: 40,
                thickness: 1,
              );