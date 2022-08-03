import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  String country = "+972";
  String phoneNuber = "0595345474";
  String message = "Hello Yusuf";
  String url = "https://wa.me/?text=YourTextHere";
  String? sendMessage;
  ContactUsScreen() {
    sendMessage = "https://wa.me/0595345474?text=${Uri.encodeFull(message)}";
  }

  @override
  Widget build(BuildContext context) {
    var whatsappUrl = "whatsapp://send?phone=${country + phoneNuber}" +
        "&text=${Uri.encodeComponent("_messageController.text")}";
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (() {
                launch(whatsappUrl);
              }),
              child: Icon(Icons.whatsapp),
            )
          ],
        ),
      ),
    );
  }
}
