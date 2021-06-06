import 'package:basketball_app/ui/screens/events/event_page_content.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, i) {
          return ScreenTypeLayout(
            mobile: EventsContentMobile(),
            desktop: EventsContentDesktop(),
          );
        },
      ),
    );
  }
}
