import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:suitmedia_mobile_developer_intern_test/adapter/connectivity_plus_adapter.dart';
import 'package:http/http.dart' as http;

class HttpAdapter {
  static final HttpAdapter _instance = HttpAdapter._internal();

  HttpAdapter._internal();

  factory HttpAdapter() => _instance;

  static Future<http.Response?> get(String url) async {
    bool connected = await ConnectivityPlusAdapter.isConnected();
    if (!connected) {
      throw const SocketException("Not connected");
    }

    final uri = Uri.parse(url);
    return http.get(uri).then((http.Response response) {
      if (kDebugMode) {
        print(response.body);
      }
      return response;
    }, onError: (error) {
      if (error != null && error is Exception) {
        throw error;
      } else {
        return null;
      }
    });
  }
}
