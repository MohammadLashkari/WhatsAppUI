import 'package:flutter/material.dart';
import 'package:whatsapp/core/themes/app_theme.dart';

class InputBox extends StatelessWidget {
  const InputBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppTheme.dividerColor),
        ),
        color: AppTheme.chatBarMessage,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(
              Icons.attach_file,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                filled: true,
                hintText: 'Type a message',
                fillColor: AppTheme.searchBarColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(
              Icons.mic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
