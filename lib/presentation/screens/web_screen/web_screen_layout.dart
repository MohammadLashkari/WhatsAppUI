import 'package:flutter/material.dart';
import 'package:whatsapp/presentation/screens/widgets/input_message.dart';
import 'package:whatsapp/presentation/screens/widgets/message_card.dart';
import 'package:whatsapp/presentation/screens/widgets/web_chat_appbar.dart';
import 'package:whatsapp/presentation/screens/widgets/web_search_bar.dart';

import '../widgets/contacts_list.dart';
import '../widgets/web_profile_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: const [
                SizedBox(height: 65, child: WebChatAppBar()),
                Expanded(child: MessageCard()),
                InputBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
