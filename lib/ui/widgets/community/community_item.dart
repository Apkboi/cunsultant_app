import 'package:flutter/material.dart';

class CommunityItems extends StatefulWidget {
  const CommunityItems({Key? key}) : super(key: key);

  @override
  State<CommunityItems> createState() => _CommunityItemsState();
}

class _CommunityItemsState extends State<CommunityItems> {
  final List<String> txt = ['All', 'General', 'Covid19', 'Allergies','Infections'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index)=>Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child:  Text(txt[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
      ),

      ),
    );
  }
}
