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
        padding:const EdgeInsets.all(16),
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
                     Text(
                      'Mr. Consultant App',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600,),
                    ),
                     Text(
                      '29 years old',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
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
                                  Text('Weight',style:  Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black.withOpacity(0.5)),),
                                   Text(
                                    '55kg',
                                    style:  Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
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
                                  Text('height',style:  Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black.withOpacity(0.5))),
                                   Text('170cm',
                                      style:  Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
               Text(
                'Your Recent Threads',
                style:  Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500,),
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
