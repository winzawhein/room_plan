import 'package:flutter/material.dart';
import 'package:room_plan/constant.dart';

class filterChipWidget extends StatefulWidget {
  final String chipName;
  filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(3.0, 4.0),
          ),
        ],
      ),
      child: FilterChip(
        showCheckmark: false,
        label: Text(widget.chipName),
        labelStyle: TextStyle(
          color: _isSelected ? Colors.white : Color(0xff5B627C),
          fontSize: 18,
        ),
        selected: _isSelected,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        backgroundColor: Color(0xffededed),
        onSelected: (isSelected) {
          setState(() {
            _isSelected = isSelected;
            list.add(widget.chipName);
            // print(_isSelected);
            // list.add(i);
          });
        },
        selectedColor: Colors.blue,
      ),
    );
  }
}
