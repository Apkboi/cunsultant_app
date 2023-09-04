import 'package:flutter/material.dart';

class NearbyDoc extends StatefulWidget {
  const NearbyDoc({Key? key}) : super(key: key);

  @override
  State<NearbyDoc> createState() => _NearbyDocState();
}

class _NearbyDocState extends State<NearbyDoc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) =>  Padding(
          padding: EdgeInsets.only(right: 20,left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(clipBehavior: Clip.none,
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                        Positioned(bottom: 8,
                            child: Image.asset(height: 50,width: 50,
                                'assets/png/doc.png')),
                      ]),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.deepOrange,
                  ),
                  const Text(
                    '4.5',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Theresa Webb',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              const SizedBox(
                height:5,
              ),
              const Text(
                'Dermatology',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.deepOrange),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Sifoam Hospital',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
