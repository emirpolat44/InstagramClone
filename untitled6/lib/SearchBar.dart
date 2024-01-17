import 'package:flutter/material.dart';

class SearchText extends StatelessWidget {
  SearchText({
    Key? key,
  }) : super(key: key);
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 4000,
      child: TextField(
        controller: _textController,
        decoration: InputDecoration(
          fillColor: Colors.grey.shade700,
          prefixIconColor: Colors.white,
          filled: true,
          constraints: const BoxConstraints.tightFor(width: 327, height: 60),
          prefixIcon: const Icon(
            Icons.search_outlined,
            color: Colors.grey,
          ),
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}