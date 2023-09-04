import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CommunityList extends StatefulWidget {
  const CommunityList({Key? key}) : super(key: key);

  @override
  State<CommunityList> createState() => _CommunityListState();
}

class _CommunityListState extends State<CommunityList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) =>
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Covid19',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.4)),
                      ),
                      const Icon(Icons.more_horiz_outlined)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Anyone gets acid reflux after having Covid19',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'vioprimhz02 . ',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13,color: Colors.grey),
                      ),
                      Text(
                        '5h ago ',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Iconsax.lovely,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('3')
                        ],
                      ),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          Icon(
                            Iconsax.message,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('3 replies')
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

      ),
    );
  }
}
