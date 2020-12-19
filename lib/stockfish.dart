
import 'dart:async';

import 'package:flutter/services.dart';

class Stockfish {
  static const MethodChannel _channel =
      const MethodChannel('stockfish');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
