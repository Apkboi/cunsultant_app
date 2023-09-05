import 'package:cunsultant_app/ui/widgets/general_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DoctorsDetails extends StatefulWidget {
  const DoctorsDetails({Key? key}) : super(key: key);

  @override
  State<DoctorsDetails> createState() => _DoctorsDetailsState();
}

class _DoctorsDetailsState extends State<DoctorsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            'dr. Theresa\nWebb',
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                            'Dermatology',
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 18,
                            // itemPadding:
                            //     const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.white,
                            ),
                            onRatingUpdate: (rating) {},
                          )
                        ],
                      ),
                      Spacer(),
                      Image.asset(height: 200, 'assets/png/doc.png')
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.lightBlue.shade500,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Language",style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400),),
                            Text(
                              'ENG',
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.lightBlue.shade500,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Experince",style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400),),
                            Text(
                              '8 years',
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                 fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.lightBlue.shade500,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Patients",style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400),),
                            Text(
                              '189',
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Doctors, also known as physicians, are licensed health professionals who maintain and restore human health through the practice of medicine. They examine patients, review their medical history, diagnose illnesses or injuries, administer treatment, and counsel patients on their health and well-being.',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(),),
                    Text(
                      'read more',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.deepOrange,fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10
                ),
                decoration: BoxDecoration(),
                child: Row(

                  children: [
                    Container(
                      width: 100,
                      decoration: const BoxDecoration(

                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text('Siloam Hospital\nSurubaya',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600,
                      ),),
                      const SizedBox(height: 20,),
                      Text('JI Raya Gubeng No 70',style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500,

                      ),),
                      SizedBox(height: 20,),
                       Row(
                        children: [
                          Text('Open in Google map',style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w400,
                              color: Colors.deepOrangeAccent
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_forward_rounded,color: Colors.deepOrange,size: 15,)
                        ],
                      )
                    ],),
                  ],
                ),
              ),

            SizedBox(height: 30,),
              CustomButton(onPressed: () {  },
                  bgColor: Colors.deepOrange,
              child: Text('Create Appointment' ,))
            ],
          ),
        ),
      ),
    );
  }
}
