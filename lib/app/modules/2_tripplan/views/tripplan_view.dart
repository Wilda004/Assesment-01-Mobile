
import 'package:appbooking_hotel/app/modules/2_tripplan/controllers/tripplan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TripplanView extends StatelessWidget {
  TripplanView({super.key});

  final TripplanController controller = Get.put(TripplanController());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Trip plan"),
      ),
    );
  }
}
