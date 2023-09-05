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
        child: Card(
            // decoration: BoxDecoration(
            //   borderRadius:  BorderRadius.circular(10.0),
            // ),
            child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15, ),
                child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'search',
                  border: InputBorder.none,
                )))));
  }
}
