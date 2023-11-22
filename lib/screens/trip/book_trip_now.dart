import 'package:faenonibeqwa/utils/shared/widgets/meeting_title_text_field.dart';
import 'package:flutter/material.dart';

class BookTripNow extends StatefulWidget {
  const BookTripNow({super.key});

  @override
  State<BookTripNow> createState() => _BookTripNowState();
}

class _BookTripNowState extends State<BookTripNow> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final numberOfPeopleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(
              controller: nameController,
              hintText: 'الاسم ثلاثي',
            ),
            const SizedBox(height: 5),
            CustomTextField(
              controller: phoneController,
              hintText: 'رقم التليفون',
            ),
            const SizedBox(height: 5),
            CustomTextField(
              controller: numberOfPeopleController,
              hintText: 'عدد الأفراد',
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
