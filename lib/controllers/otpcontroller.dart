import 'dart:convert';

import 'package:get/get.dart';
import 'package:otpcode/services/otpservice.dart';

class OtpController extends GetxController {
  RxBool loadingFlag = true.obs;
  String otpCode = '';

  @override
  void onInit() {
    getOtpCode();
    super.onInit();
  }

  void getOtpCode() async {
    loadingFlag.value = true;
    try {
      var response = await OtpService.getOtp();
      var res = jsonDecode(response.toString());
      otpCode = res["otp_code"];
    } finally {
      loadingFlag.value = false;
    }
  }
}
