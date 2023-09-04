import 'package:cunsultant_app/ui/screens/utils/app_utils.dart';
import 'package:cunsultant_app/ui/widgets/add_doctor/add_doctor.dart';
import 'package:cunsultant_app/ui/widgets/general_widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddDoctor extends StatefulWidget {
  const AddDoctor({Key? key}) : super(key: key);

  @override
  State<AddDoctor> createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
             Row(
              children: [
                InkWell(
                  onTap: ()=>Navigator.pop(context),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.deepOrange,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 24,
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Search Your\nPreffered Doctor',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            const Spacer(),
            const SearchField(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              child: InkWell(
                onTap: ()=>AppUtils.showCustomModalBottomSheet(context, AddDoc()),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 2,

                    )],
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Iconsax.home1,size: 16,color: Colors.greenAccent,),
                          SizedBox(width: 5,),

                          Text(
                            'Clinic',
                            style:
                            TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const Text(
                        'VAF Clinic',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        'JI. Pucang Clinic,NO 49 Gubeng',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15,color: Colors.black.withOpacity(0.8)),
                      ),
                      const SizedBox(height: 5,),
                      const Text(
                        '11.8km from your location',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Colors.grey),
                      ),
                      const SizedBox(height: 15,),
                      const Row(
                        children: [
                          Text(
                            '12 doctors ',
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: Colors.deepOrangeAccent),
                          ),
                          Text(
                            ' in ',
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: Colors.black87),
                          ),
                          Text(
                            '3 speciality',
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: Colors.deepOrangeAccent),
                          ),
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
    );
  }
}
