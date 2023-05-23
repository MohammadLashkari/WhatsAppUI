import 'package:flutter/material.dart';
import 'package:whatsapp/core/themes/app_theme.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: const BoxDecoration(
        color: AppTheme.webAppBarColor,
        border: Border(
          right: BorderSide(color: AppTheme.dividerColor),
        ),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://picsum.photos/240'),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(
              Icons.archive,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(
              Icons.add,
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
