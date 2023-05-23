import 'package:flutter/material.dart';
import 'package:whatsapp/core/themes/app_theme.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppTheme.dividerColor),
        ),
      ),
      child: TextField(
        cursorColor: Colors.green,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppTheme.searchBarColor,
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.search,
              size: 20,
              color: Colors.green,
            ),
          ),
          hintText: 'Search or start new chat',
          hintStyle: const TextStyle(fontSize: 14),
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
