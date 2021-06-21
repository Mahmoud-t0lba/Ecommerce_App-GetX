import 'package:ecommerce_app/core/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'custom_text.dart';

Widget listViewCategory() {
  return GetBuilder<HomeViewModel>(
    builder: (controller) => Container(
      height: 100,
      child: ListView.separated(
        itemCount: controller.categoryModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade100,
                ),
                height: 60,
                width: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(controller.categoryModel[index].image),
                ),
              ),
              SizedBox(height: 20),
              CustomText(
                text: controller.categoryModel[index].name,
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 20),
      ),
    ),
  );
}
