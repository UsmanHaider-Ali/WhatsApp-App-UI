import 'package:flutter/material.dart';

import '../colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: searchBarColor,
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          contentPadding: const EdgeInsets.all(8),
          hintText: 'Search',
          hintStyle: const TextStyle(fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
          ),
        ),
      ),
    );
  }
}
