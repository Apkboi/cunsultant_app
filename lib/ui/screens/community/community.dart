import 'package:cunsultant_app/ui/widgets/community/community_item.dart';
import 'package:cunsultant_app/ui/widgets/community/community_list.dart';
import 'package:cunsultant_app/ui/widgets/general_widgets/headers.dart';
import 'package:cunsultant_app/ui/widgets/general_widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
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
              Headers(
                text: 'Community\nForum',
                icon: Iconsax.edit_2,
              ),
              SizedBox(
                height: 20,
              ),
              SearchField(),
              SizedBox(
                height: 10,
              ),
              CommunityItems(),
              CommunityList(),
            ],
          ),
        ),
      ),
    );
  }
}
