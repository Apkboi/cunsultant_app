import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Threads extends StatefulWidget {
  const Threads({Key? key}) : super(key: key);

  @override
  State<Threads> createState() => _ThreadsState();
}

class _ThreadsState extends State<Threads> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,

        itemBuilder: (
            BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Allergies',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.greenAccent.withOpacity(0.6)),
                  ),
                  Icon(Icons.more_horiz_outlined)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'It has been 2-3 years that i have this spots in my leg',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'vioprimhz02 . ',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: Colors.grey),
                  ),
                  Text(
                    '5h ago ',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: Colors.grey),
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
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.message,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('3')
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
