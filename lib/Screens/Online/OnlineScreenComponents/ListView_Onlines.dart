import 'package:chat_app_ui/Globals.dart';
import 'package:flutter/material.dart';

import 'OnlineTile.dart';

class ListView_Onlines extends StatelessWidget {
  const ListView_Onlines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: MediaQuery.of(context).size.height * 0.35,

      child: ListView.builder(
        itemCount: favourites.length,
        itemBuilder: (context, index) 
        => favourites[index].isOnline?
            OnlineTile(favourites[index]): const SizedBox.shrink()
      ),
    );
  }
}
