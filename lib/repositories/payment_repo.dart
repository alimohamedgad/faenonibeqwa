import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/shared/data/api_services.dart';
import '../utils/shared/data/constance.dart';
import 'package:flutter/material.dart';

class PaymentRepo extends ChangeNotifier {
  final ProviderRef ref;

  PaymentRepo(this.ref);

  Future<void> getAuthPayment() async {
    // emit(PaymentAuthLoading());
    await DioHelper.postData(
      url: ApiUrl.baseUrl + ApiUrl.authTokenUrl,
      data: {
        "api_key": ApiUrl.apiKey,
      },
    ).then((value) {
      ref.read(firstToken.state).update((state) => value.data['token']);
      log('First Token ${ref.read(firstToken.state).state}');
      // emit(PaymentAuthSuccess());
    }).catchError((error) {
      // emit(PaymentAuthFailure());
      log(error);
    });
  }

  // int orderID = 0;
  // String integrationIdCart = '';
  // String finalToken = '';
  Future<void> getOrderId({
    required dynamic price,
  }) async {
    // emit(GetOrderIdLoading());

    await DioHelper.postData(
      url: ApiUrl.baseUrl + ApiUrl.orderID,
      data: {
        "auth_token": ref.read(firstToken.state).state,
        "delivery_needed": "false",
        "amount_cents": price.toString(),
        "currency": "EGP",
        "items": []
      },
    ).then((value) async {
      ref.read(orderID.state).update((state) => value.data['id']);
      getPaymentRequest(
        price: price,
      );

      log('Order ${ref.read(orderID.state).state}');
      // emit(GetOrderIdSuccess());
    }).catchError((error) {
      log(error.toString());
      // emit(GetOrderIdFailure());
    });
  }

  Future<void> getPaymentRequest({
    required String price,
  }) async {
    // emit(GetPaymentRequestLoading());

    DioHelper.postData(
      url: ApiUrl.baseUrl + ApiUrl.paymentKeyRequest,
      data: {
        "auth_token": ref.read(firstToken.state).state,
        "amount_cents": price,
        "expiration": 3600,
        "order_id": ref.read(orderID.state).state,
        "billing_data": {
          "apartment": "NA",
          "email": "NA",
          "floor": "NA",
          "first_name": "NA",
          "street": "phone",
          "building": "NA",
          "phone_number": "NA",
          "shipping_method": "NA",
          "postal_code": "NA",
          "city": "NA",
          "country": "NA",
          "last_name": "NA",
          "state": "NA"
        },
        "currency": "EGP",
        "integration_id": ApiUrl.integrationId
      },
    ).then((value) {
      ref.read(finalToken.state).update((state) => value.data['token']);
      log('finalToken ${ref.read(finalToken.state).state}');
      // emit(GetPaymentRequestSuccess());
    }).catchError((error) {
      log(error.toString());
      // emit(GetPaymentRequestFailure());
    });
  }
}

final paymentReo = Provider((ref) => PaymentRepo(ref));
final firstToken = StateProvider<String>((ref) => "");
final finalToken = StateProvider<String>((ref) => "");
final orderID = StateProvider<int>((ref) => 0);
