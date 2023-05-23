import 'package:flutter/material.dart';
import 'package:whatsapp/core/themes/app_theme.dart';

import '../../../core/constants/info.dart';
import '../mobile_screen/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 10),
      shrinkWrap: true,
      itemCount: info.length,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: AppTheme.dividerColor,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MobileChatScreen(),
              ),
            );
          },
          child: ListTile(
            title: Text(
              info[index]['name'].toString(),
              style: const TextStyle(fontSize: 18),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                info[index]['message'].toString(),
                style: const TextStyle(fontSize: 14),
              ),
            ),
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(info[index]['profilePic'].toString()),
              radius: 30,
            ),
            trailing: Text(
              info[index]['time'].toString(),
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ),
        );
      },
    );
  }
}
