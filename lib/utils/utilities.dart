import 'package:flutter/cupertino.dart';

import 'package:url_launcher/url_launcher.dart';

const primaryColor = Color(0xFFFBC400);
final secondaryColor = const Color(0xFFC4C4C4).withOpacity(0.3);

Future<void> irAWeb(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
