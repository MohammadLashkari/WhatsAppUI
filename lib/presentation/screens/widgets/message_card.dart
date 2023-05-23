import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:whatsapp/core/constants/info.dart';
import 'package:whatsapp/core/themes/app_theme.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GroupedListView(
      padding: const EdgeInsets.all(8),
      elements: messages,
      groupBy: (message) => message['time'],
      groupHeaderBuilder: (message) => const SizedBox(),
      itemBuilder: (context, message) {
        return Align(
          alignment: message['isMe'] as bool
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Card(
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: message['isMe'] as bool
                ? AppTheme.messageColor
                : AppTheme.senderMessageColor,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 22,
                    left: 10,
                    right: 30,
                  ),
                  child: Text(
                    message['text'].toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 10,
                  child: Row(
                    children: [
                      Text(
                        message['time'].toString(),
                        style: const TextStyle(
                            fontSize: 13, color: Colors.white60),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.done_all,
                        size: 20,
                        color: Colors.white60,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
