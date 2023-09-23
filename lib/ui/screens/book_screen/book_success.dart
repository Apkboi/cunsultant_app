import 'package:cunsultant_app/ui/screens/dashboard/dashboard.dart';
import 'package:cunsultant_app/ui/widgets/general_widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/theme/text_theme.dart';

class BookSuccess extends StatefulWidget {
  const BookSuccess({super.key});

  @override
  State<BookSuccess> createState() => _BookSuccessState();
}

class _BookSuccessState extends State<BookSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 68,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 66,
                    backgroundColor: Color(0xff1e9996),
                    child: Center(
                      child: Icon(Iconsax.more),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Processing Your",
                style: textTheme.titleLarge,
              ),
              Text(
                "Payment ",
                style: textTheme.titleLarge,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  isExpanded: false,
                  child: const Text('Back To Home'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(CupertinoPageRoute(
                        builder: (index) => const DashBoardScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
