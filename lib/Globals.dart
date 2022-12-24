import 'package:chat_app_ui/Screens/Friends/FriendsScreen.dart';
import 'package:chat_app_ui/Screens/Home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'Classes/Message.dart';
import 'Classes/Person.dart';
import 'Screens/Groups/GroupsScreen.dart';
import 'Screens/Online/OnlineScreen.dart';

const Color primaryDark = Color.fromARGB(255, 29, 53, 87);
const Color primaryMidDark = Color.fromARGB(255, 69, 123, 157);
const Color primaryMidLight = Color.fromARGB(255, 168, 218, 220);
const Color primaryLight = Color.fromARGB(255, 252, 250, 238);
const Color onprimary = Colors.purpleAccent;
const Color secondLight = Color.fromARGB(255, 230, 225, 250);
const Color highlightColor = Color.fromARGB(255, 255, 191, 0);
const Color primaryText = Color.fromARGB(255, 84, 110, 122);
const Color selectedColor = Color.fromARGB(255, 31, 255, 244);

const double defPadding = 20.0;

const double radius = 40;
const double imageradius = 35;

const double blurRadius = 5;

//Routes
int selectedIndex = 0;
const List<Widget> routes = [
  HomeScreen(),
  OnlineScreen(),
  GroupsScreen(),
  FriendsScreen(),
];

//Categories
const List<String> categories = [
  'Messages',
  'Online',
  'Groups',
  'Friends'
];

//Sample users
List<Person> favourites = [

  Person(id: 0, name: 'Pipsum',imageUrl: 'portrait1.jpg', isOnline: false, bio: 'suyf syfy iafu o swufye aiiytwb'),
  Person(id: 1, name: 'Mosmel', imageUrl: 'portrait2.png', isOnline: true, bio: 'sed quia consequuntur magni dolores'),
  Person(id: 2, name: 'Husberg',imageUrl: 'portrait3.jpg', isOnline: false, bio: 'eos qui ratione voluptatem sequi nesciunt'),
  Person(id: 3, name: 'Gosum',imageUrl: 'portrait4.jpg', isOnline: true, bio: 'suyf syfy iafu o swufye aiiytwb'),
  Person(id: 4, name: 'Lorem',imageUrl: 'portrait5.png', isOnline: false, bio: 'sed quia consequuntur magni dolores'),
  Person(id: 5, name: 'Autem',imageUrl: 'portrait6.png', isOnline: false, bio: 'suyf syfy iafu o swufye aiiytwb'),
  Person(id: 6, name: 'Shaw',imageUrl: 'portrait7.jpg', isOnline: true, bio: 'eos qui ratione voluptatem sequi nesciunt'),
  //Person(id: 7, name: 'Limbo',imageUrl: 'portrait8.jpg', isOnline: true)
];

//Sample messages
List<Message>messages = [

  Message(
    isLiked: true,
    sender: favourites[0], 
    text: 'suyf syfy iafu o swufye aiiytwb',
    time: '18:06',
    isread: true),

  Message(sender: favourites[1], 
  isLiked: false, 
  isread: false, 
  text: 'sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt', 
  time: '12:53'),

  Message(sender: favourites[1], 
  isLiked: false, 
  isread: true, 
  text: 'Ut enim ad minima veniam', 
  time: '14:31'),
  
  Message(sender: favourites[1], 
  isLiked: false, 
  isread: true, 
  text: 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet', 
  time: '9:09'),
  
  Message(sender: favourites[1], 
  isLiked: true, 
  isread: true, 
  text: 'sed quia consequuntur magni dolores eos sit amet', 
  time: '3:35'),
  
  Message(sender: favourites[1], 
  isLiked: false, 
  isread: false, 
  text: 'qui ratione voluptatem sequi nesciunt', 
  time: '5:21'),

  Message(sender: favourites[0], 
  isLiked: false, 
  isread: false, 
  text: 'sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt', 
  time: '12:53'),

  Message(sender: favourites[1], 
  isLiked: false, 
  isread: false, 
  text: 'sed quia consequuntur magni dolores eos sit amet', 
  time: '3:35'),
];