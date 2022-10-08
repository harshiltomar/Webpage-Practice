import 'package:flutter/material.dart';
import 'package:webpage/widgets/call_to_action/calltoaction.dart';
import 'package:webpage/widgets/centered_view/centered_view.dart';
import 'package:webpage/widgets/course_details/course_details.dart';
import 'package:webpage/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar,
            Expanded(
                child: Row(
              children: [
                CourseDetails(),
                const Expanded(
                    child: Center(
                  child: CallToAction(
                    title: 'Join Course',
                  ),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
