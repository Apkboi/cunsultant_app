import 'package:flutter/material.dart';
class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                blurRadius: 1,spreadRadius: 1,
                color: Colors.grey.withOpacity(0.2),
                offset: const Offset(0,1)
              )]
        ),
        child: TextFormField(
          cursorHeight: 15,
          decoration: const InputDecoration(
            hintText: 'search',
            fillColor: Colors.white,
            border: InputBorder.none,
            filled: true,

          ),
        ),
      ),
    );
  }
}