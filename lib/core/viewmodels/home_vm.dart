import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:hummer_ffi/hummer_ffi.dart';

class HomeVM extends ChangeNotifier {
  final TextEditingController tec = new TextEditingController();

  HummerFfi hummerFfi = HummerFfi();

  play(String file) {
    hummerFfi.play(file);
  }

  void process() async {
    try {
      if (tec.text != null) {
        await writeSongToDisk(tec.text).then((file) {
          play(file.path);
          BotToast.showSimpleNotification(title: 'Hum Successfully Played');
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<File> writeSongToDisk(String data) {
    final file = File('data.hum');
    // Write the file.
    return file.writeAsString(data);
  }
}
