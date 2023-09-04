import 'package:flutter/material.dart';
class ProfileThreads extends StatefulWidget {
  const ProfileThreads({Key? key}) : super(key: key);

  @override
  State<ProfileThreads> createState() => _ProfileThreadsState();
}

class _ProfileThreadsState extends State<ProfileThreads> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      physics: BouncingScrollPhysics(),
        shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index)=> Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [BoxShadow(
                spreadRadius: 1,
                blurRadius: 1,
                color: Colors.grey.withOpacity(0.05),
                offset: const Offset(0, 0)
            )]
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Accident and Injuries',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.greenAccent.withOpacity(0.8)),
                ),
                const Icon(Icons.more_horiz_outlined)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Hand/Wrist/Forearm injury that',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            const Text(
              'won\'t go away',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.grey),
            ),


          ],
        ),
    ),
      ),

    );
  }
}
