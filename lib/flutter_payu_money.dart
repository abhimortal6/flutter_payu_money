import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_payu_money/models/payment_params_model.dart';
import 'package:flutter_payu_money/utils/constants.dart';
import 'package:flutter_payu_money/validator.dart';

class FlutterPayuMoney {
  static const MethodChannel _channel = const MethodChannel(Constants.platformChannelName);

  static Future<Map> initiatePayment({
    @required PaymentParams paymentParams,
    bool showCompletionScreen: true,
  }) async {
    if (validatePaymentParams(paymentParams)) {
      Map<String, dynamic> _map = paymentParams.toMap();
      _map.addAll({'showCompletionScreen': showCompletionScreen});
      print(_map);
      return await _channel.invokeMethod(Constants.initiatePaymentMethod, _map);
    } else {
      throw Exception("Incorrect Payment Params");
    }

    return null;
  }
}
