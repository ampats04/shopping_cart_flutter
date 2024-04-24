import 'package:ardu_illuminate/controllers/shopping_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({super.key})

  final shoppingController = Get.put(ShoppingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GetX<ShoppingController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Card();
                  },
                );
              },
            ),
            const Text("Total amount"),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
