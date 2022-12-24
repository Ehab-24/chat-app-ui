import 'package:chat_app_ui/Classes/Person.dart';

class Message{

  final Person sender;
  final String time, text;
  bool isLiked, isread;

  Message({
    required this.sender,
    required this.isLiked,
    required this.isread,
    required this.text,
    required this.time    
  });
}