import 'package:faenonibeqwa/utils/shared/widgets/big_text.dart';
import 'package:faenonibeqwa/utils/shared/widgets/custom_button.dart';
import 'package:faenonibeqwa/utils/shared/widgets/meeting_title_text_field.dart';
import 'package:faenonibeqwa/utils/shared/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookTripNow extends StatefulWidget {
  const BookTripNow({super.key});

  @override
  State<BookTripNow> createState() => _BookTripNowState();
}

class _BookTripNowState extends State<BookTripNow> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final numberOfPeopleController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const BigText(
          text: 'حجز رحلة',
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Column(
            children: [
              CustomTextField(
                controller: nameController,
                hintText: 'الاسم ثلاثي',
                validator: (e) {
                  if (e!.isEmpty) {
                    return 'يرجي ادخال الاسم';
                  }
                  return null;
                },
              ),
              14.verticalSpace,
              CustomTextField(
                controller: phoneController,
                hintText: 'رقم التليفون',
                keyBoardTyp: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                ],
                validator: (e) {
                  if (e!.isEmpty) {
                    return 'يرجي ادخال رقم الهاتف';
                  }
                  return null;
                },
              ),
              14.verticalSpace,
              CustomTextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                ],
                keyBoardTyp: TextInputType.phone,
                controller: numberOfPeopleController,
                hintText: 'عدد الأفراد',
                validator: (e) {
                  if (e!.isEmpty) {
                    return 'يرجي ادخال عدد الأفراد';
                  }
                  return null;
                },
              ),
              14.verticalSpace,
              CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    print('Validator Done');
                  }
                },
                text: 'تابع لأتمام عملية الحجز',
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
