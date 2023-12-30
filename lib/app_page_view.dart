import 'package:flutter/material.dart';
import 'package:text_view/app_data_text.dart';
import 'package:text_view/app_display_text.dart';

class Apppageview extends StatefulWidget {
  const Apppageview({super.key});

  @override
  State<Apppageview> createState() => _ApppageviewState();
}

class _ApppageviewState extends State<Apppageview> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Quotes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 500,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                    print(index);
                  });
                },
                controller: PageController(viewportFraction: 0.7),
                itemCount: appDataText.length,
                itemBuilder: (context, index) {
                  var scale = _selectedIndex == index ? 1.0 : 0.8;
                  return TweenAnimationBuilder(
                    tween: Tween(begin: scale, end: scale),
                    duration: Duration(milliseconds: 400),
                    child: DisplayText(appDataText: appDataText[index]),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: scale,
                        child: child,
                      );
                    },
                  );
                  DisplayText(appDataText: appDataText[index]);
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: new Text((_selectedIndex +1).toString()+'/'+
                appDataText.length.toString(),
                style: TextStyle(
                  fontSize: 25,color: Colors.black
                ),)
              )
            ],
          )

        ],
      ),
    );
  }
}
