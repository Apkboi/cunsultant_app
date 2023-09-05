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
                 Text(
                  'Search Your\nPreffered Doctor',
                  style:Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500, ),
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
                    color: Theme.of(context).colorScheme.surface.withOpacity(0.2),
                    border: Border.all(color: Theme.of(context).colorScheme.onBackground.withOpacity(0.2))

                  ),
                  width: MediaQuery.of(context).size.width,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Row(
                        children: [
                          const Icon(Iconsax.home1,size: 16,color: Colors.greenAccent,),
                          const SizedBox(width: 5,),

                          Text(
                            'Clinic',
                            style:
                           Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600, ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15,),
                       Text(
                        'VAF Clinic',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith( fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        'JI. Pucang Clinic,NO 49 Gubeng',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500,),
                      ),
                      const SizedBox(height: 5,),
                       Text(
                        '11.8km from your location',
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w500, color: Colors.grey),
                      ),
                      const SizedBox(height: 15,),
                       Row(
                        children: [
                          Text(
                            '12 doctors ',
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500, fontSize: 14,color: Colors.deepOrangeAccent),
                          ),
                          Text(
                            ' in ',
                            style:  Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500, fontSize: 14,color: Colors.black87),
                          ),
                          Text(
                            '3 speciality',
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500, fontSize: 14,color: Colors.deepOrangeAccent),
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
