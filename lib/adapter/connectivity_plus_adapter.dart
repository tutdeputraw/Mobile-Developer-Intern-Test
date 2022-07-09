import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityPlusAdapter {
  static Future<bool> isConnected() async {
    ConnectivityResult result = await (Connectivity().checkConnectivity());

    return result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi;
  }
}
