import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/payment_repo.dart';

class PaymenController {
  final PaymentRepo paymentRepo;

  PaymenController(this.paymentRepo);

  Future<void> getPaymentAuth() => paymentRepo.getAuthPayment();
  Future<void> getOrderId({required dynamic price}) =>
      paymentRepo.getOrderId(price: price);
  Future<void> getPaymentRequest({required String price}) =>
      paymentRepo.getPaymentRequest(price: price);
}

final paymentController = Provider((ref) {
  return PaymenController(ref.read(paymentReo));
});
