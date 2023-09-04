import 'package:cunsultant_app/ui/widgets/chat_widget/chat_widget.dart';
import 'package:cunsultant_app/ui/widgets/general_widgets/headers.dart';
import 'package:cunsultant_app/ui/widgets/general_widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Headers(text: 'Consultation', icon: Iconsax.message_add),
              SizedBox(
                height: 20,
              ),
              SearchField(),
              Chat_Widget()
            ],
          ),
        ),
      ),
    );
  }
}
