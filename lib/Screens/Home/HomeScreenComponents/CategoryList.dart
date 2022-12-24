import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(

      height: size.height * 0.12,

      color: Colors.grey.shade400,

      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        
        itemBuilder: (context, index)
        => Padding(
          padding: const EdgeInsets.symmetric(horizontal: defPadding, vertical: defPadding/2),
          child: TextButton(
            
            onPressed: () {
              if(selectedIndex != index)
              { 
                selectedIndex = index;
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute (builder: (context) => routes[index]));
              }
            },
            child: Text(
              categories[index],
              style: TextStyle(
                color: index == selectedIndex?  Colors.white: Colors.white60,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                letterSpacing: 1.2
              ),
            ),
          ),
        )
      )
    );
  }
}
