import 'package:faenonibeqwa/screens/trip/screens/trip_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/trip_model.dart';
import '../../../utils/shared/widgets/custom_button.dart';
import '../../../utils/shared/widgets/small_text.dart';
import '../screens/book_trip_now.dart';

class ItemTrip extends StatelessWidget {
  final TripModel tripModel;
  const ItemTrip({
    super.key,
    required this.tripModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return TripDetailsScreen(
            tripModel: tripModel,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 10, left: 0, right: 0),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                tripModel.imageTrip,
                height: 120.h,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SmallText(
                    text: 'اسم الرحله / ${tripModel.nameTrip}',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SmallText(
                    text: 'سعر الفرد / ${tripModel.price} جنية',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SmallText(
                text: 'الوصف / ${tripModel.description}',
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: CustomButton(
                color: Colors.green,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return BookTripNow(
                          price: tripModel.price,
                        );
                      },
                    ),
                  );
                },
                text: 'احجز الأن',
                screenWidth: 150.w,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
