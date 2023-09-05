import 'package:flutter/material.dart';
class DocItems extends StatefulWidget {
  const DocItems({Key? key}) : super(key: key);

  @override
  State<DocItems> createState() => _DocItemsState();
}

class _DocItemsState extends State<DocItems> {
  final List<String> txt=['All','Cardiology','Dentistry','Dermatology'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index)=>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Card(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),),
              child:  Text(txt[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
            ),
          ),
        ),

      ),
    );
  }
}
