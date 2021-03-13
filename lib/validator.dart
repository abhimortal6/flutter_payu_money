import 'package:flutter_payu_money/models/payment_params_model.dart';
import 'package:flutter_payu_money/utils/constants.dart';

bool validatePaymentParams(PaymentParams paymentParams, {bool debugPrint: true}) {
  if (paymentParams.merchantID == null) {
    if (debugPrint) print(Constants.printTAG + "Merchant ID cannot be null.");
    return false;
  }
  if (paymentParams.amount == null) {
    if (debugPrint) print(Constants.printTAG + "Amount cannot be null.");
    return false;
  }
  if (paymentParams.salt == null) {
    if (debugPrint) print(Constants.printTAG + "Salt cannot be null.");
    return false;
  }
  if (paymentParams.merchantKey == null) {
    if (debugPrint) print(Constants.printTAG + "Merchant Key cannot be null.");
    return false;
  }
  if (paymentParams.transactionID == null) {
    if (debugPrint) print(Constants.printTAG + "Transaction ID cannot be null.");
    return false;
  }
  if (paymentParams.phone == null) {
    if (debugPrint) print(Constants.printTAG + "Phone Number cannot be null.");
    return false;
  }
  if (paymentParams.productName == null) {
    if (debugPrint) print(Constants.printTAG + "Product Info cannot be null.");
    return false;
  }
  if (paymentParams.sURL == null) {
    if (debugPrint) print(Constants.printTAG + "sURL  cannot be null.");
    return false;
  }
  if (paymentParams.fURL == null) {
    if (debugPrint) print(Constants.printTAG + "fURL  cannot be null.");
    return false;
  }
  if (paymentParams.hash == null) {
    if (debugPrint) print(Constants.printTAG + "Hash cannot be null.");
    return false;
  }
  if (paymentParams.merchantID == null) {
    if (debugPrint) print(Constants.printTAG + "Merchant  cannot be null.");
    return false;
  }

  return true;
}
