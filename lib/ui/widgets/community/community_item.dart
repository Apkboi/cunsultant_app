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
        itemBuilder: (BuildContext context, int index)=>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
            child: Text(txt[index],style:Theme.of(context)
                .textTheme.titleSmall
                ?.copyWith(fontWeight: FontWeight.w500),),
          ),
      ),
        ),

      ),
    );
  }
}
