import 'package:http/http.dart' as http;

class OtpService {
  static Future<dynamic> getOtp() async {
    var uri =
        Uri.parse("https://mocki.io/v1/9a3d57b9-fa3f-402e-99f9-982134108d18");
    http.Response response = await http.get(uri);
    return response.body;
  }
}
