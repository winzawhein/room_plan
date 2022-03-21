import 'package:flutter/material.dart';
import 'package:room_plan/utils/colors.dart';

import 'filter_chip_widget.dart';
import 'title_container.dart';

class SpecialRequest extends StatefulWidget {
  SpecialRequest({Key? key}) : super(key: key);

  @override
  State<SpecialRequest> createState() => _SpecialRequestState();
}

class _SpecialRequestState extends State<SpecialRequest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleContainer(myTitle: "Special Request Items")),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Wrap(
                spacing: 5.0,
                runSpacing: 5.0,
                children: <Widget>[
                  filterChipWidget(chipName: 'Extra Bed'),
                  filterChipWidget(chipName: 'Extra Breakfast'),
                  filterChipWidget(chipName: 'Transportation'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
