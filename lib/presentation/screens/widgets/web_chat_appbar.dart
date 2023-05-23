import 'package:flutter/material.dart';
import 'package:whatsapp/core/themes/app_theme.dart';

import '../../../core/constants/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          info[0]['name'].toString(),
          style: const TextStyle(fontSize: 20),
        ),
        backgroundColor: AppTheme.webAppBarColor,
        elevation: 0,
        toolbarHeight: 65,
        leading: const Padding(
          padding: EdgeInsets.only(left: 2),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage('https://picsum.photos/211'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
