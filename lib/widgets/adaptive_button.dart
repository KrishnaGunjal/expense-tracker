import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io' as IO show Platform;

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return IO.Platform.isIOS
        ? CupertinoButton(
        child: Text(text),
        onPressed: handler)
        : TextButton(
        onPressed: handler,
        child: Text(text));
  }
}
