import 'package:flutter/material.dart';

class ReuseableWidgets extends StatelessWidget {
  const ReuseableWidgets(this.text1, this.text2, this.icon, this.color,
      {Key? key})
      : super(key: key);
  final String text1;
  final String text2;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(icon),
          ),
        ),
        textColor: Colors.white,
        title: Text(
          text1,
          style: const TextStyle(fontSize: 20),
        ),
        subtitle: const Text(
          "Since Last Week",
          style: TextStyle(color: Colors.white38),
        ),
        trailing: Text(
          text2,
          style: const TextStyle(fontSize: 23),
        ));
  }
}
