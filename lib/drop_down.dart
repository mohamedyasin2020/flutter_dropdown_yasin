import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  var DropDownValue = "Sunday";
  var days = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('DropDown')),
      ),
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton(
              elevation: 22,
              value: DropDownValue,
              hint: Text('week'),
              items: days.map(
                (String value) {
                  return DropdownMenuItem(value: value, child: Text(value));
                },
              ).toList(),
              onChanged: (newValue) {
                setState(() {
                  DropDownValue = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
