import 'dart:html';

import 'package:url_launcher/url_launcher.dart';

Future<void> irAWeb(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> downloadFile(String url, String nombre) async {
  final anchorElement = AnchorElement(href: url);
  anchorElement.download = nombre;
  anchorElement.click();
}
