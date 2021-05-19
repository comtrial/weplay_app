import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  Widget _logo() {
    return Container(
      child: Image.asset("assets/images/weplay.png"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          _logo(),
        ],
      ),
    );
  }
}
