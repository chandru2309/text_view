import 'package:flutter/material.dart';
import 'package:text_view/app_data_text.dart';
import 'package:text_view/app_display_text.dart';

class Apppageview extends StatefulWidget {
  const Apppageview({super.key});

  @override
  State<Apppageview> createState() => _ApppageviewState();
}

class _ApppageviewState extends State<Apppageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.deepPurple,
title: Text('Quotes'),
),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Container(
  height: 500,
child: PageView.builder(
    itemCount: appDataText.length,
    itemBuilder: (context ,index){
return DisplayText(appDataText: appDataText[index]);
}),
)
        ],
      ),
    );
  }
}
