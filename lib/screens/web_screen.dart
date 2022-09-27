import 'package:flutter/material.dart';
import 'package:sophia/custom_widgets/custom_text.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CustomText(title: "Web Screen"));
  }
}
