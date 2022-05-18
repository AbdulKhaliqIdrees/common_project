import 'package:flutter/material.dart';

class ReuseableWidgets extends StatelessWidget {
  const ReuseableWidgets(this.text1, this.text2, this.icon, this.colors,
      {Key? key})
      : super(key: key);
  final String text1;
  final String text2;
  final IconData icon;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: colors,
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
          "Since last Week",
          style: TextStyle(color: Colors.white38),
        ),
        trailing: Text(
          text2,
          style: const TextStyle(fontSize: 23),
        ));
  }
}
