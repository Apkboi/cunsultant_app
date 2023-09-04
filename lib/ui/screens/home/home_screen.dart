import 'package:cunsultant_app/ui/widgets/general_widgets/headers.dart';
import 'package:cunsultant_app/ui/widgets/home_screen_widget/appointment.dart';
import 'package:cunsultant_app/ui/widgets/home_screen_widget/nearby_doc.dart';
import 'package:cunsultant_app/ui/widgets/home_screen_widget/threads.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Headers(text: 'Home', icon: Iconsax.notification,),
              SizedBox(
                height: 30,
              ),
              AppointmentWidget(),
              SizedBox(
                height: 40,
              ),
              Text(
                'Nearby Doctor',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              NearbyDoc(),
              SizedBox(
                height: 50,
              ),
              Text(
                'Threads You Might Like',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),

              Threads(),
            ],
          ),
        ),
      ),
    );
  }
}
