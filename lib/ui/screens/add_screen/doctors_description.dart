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
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlue.shade500,
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
                        const Text(
                          'dr. Theresa\nWebb',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Dermatology',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
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
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Language"),
                            Text(
                              'ENG',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
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
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Experince"),
                            Text(
                              '8 years',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
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
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Patients"),
                            Text(
                              '189',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Doctors, also known as physicians, are licensed health professionals who maintain and restore human health through the practice of medicine. They examine patients, review their medical history, diagnose illnesses or injuries, administer treatment, and counsel patients on their health and well-being.'),
                    Text(
                      'read more',
                      style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),

              Row(

                children: [
                  Container(
                    width: 150,
                    decoration: const BoxDecoration(

                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const Text('Siloam Hospital\nSurubaya',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20
                      ),),
                      const SizedBox(height: 20,),
                      Text('JI Raya Gubeng No 70',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,
                        color: Colors.black.withOpacity(0.5)
                      ),),
                      SizedBox(height: 20,),
                      const Row(
                        children: [
                          Text('Open in Google map',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,
                              color: Colors.deepOrangeAccent
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_forward_rounded,color: Colors.deepOrange,size: 15,)
                        ],
                      )
                    ],),
                  ),
                ],
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
