import 'package:cunsultant_app/ui/widgets/profile_widget/profile_threads.dart';
import 'package:flutter/material.dart';
import 'package:cunsultant_app/ui/widgets/general_widgets/headers.dart';
import 'package:iconsax/iconsax.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Headers(text: 'Profile', icon: Iconsax.profile_add),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: [
                    Stack(clipBehavior: Clip.none,
                        children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.deepOrange,
                      ),
                      Positioned(bottom: 15,
                          child: Image.asset(height: 100,width: 100,
                          'assets/png/doc.png')),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Mr. Consultant App',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    const Text(
                      '29 years old',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(
                            offset: Offset(6, 4),
                            spreadRadius: 2,blurRadius: 2,
                          color: Colors.grey.withOpacity(0.05)
                        )]
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.deepOrange,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Weight',style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                              const Text(
                                '55kg',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                              spreadRadius: 1,blurRadius: 1,
                              offset: Offset(6, 4),
                              color: Colors.grey.withOpacity(0.03)

                          )]
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.deepOrange,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('height',style: TextStyle(color: Colors.black.withOpacity(0.5))),
                              const Text('170cm',
                                  style: TextStyle(fontWeight: FontWeight.w600)),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Your Recent Threads',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              // SizedBox(height: 20,),
              const ProfileThreads()
            ],
          ),
        ),
      ),
    );
  }
}
