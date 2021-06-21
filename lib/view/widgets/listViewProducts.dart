import 'package:ecommerce_app/color.dart';
import 'package:ecommerce_app/core/view_model/home_view_model.dart';
import 'package:ecommerce_app/view/daetilas_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'custom_text.dart';

Widget listViewProducts() {
  return GetBuilder<HomeViewModel>(
    builder: (controller) => Container(
      height: 350,
      child: ListView.separated(
        itemCount: controller.productModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(
                DetailsView(
                  model: controller.productModel[index],
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * .4,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade100,
                    ),
                    child: Container(
                        height: 220,
                        width: MediaQuery.of(context).size.width * .4,
                        child: Image.network(
                          controller.productModel[index].image,
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 20),
                  CustomText(
                    text: controller.productModel[index].name,
                    alignment: Alignment.bottomLeft,
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: CustomText(
                      text: controller.productModel[index].description,
                      color: Colors.grey,
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomText(
                    text:
                        controller.productModel[index].price.toString() + " \$",
                    color: primaryColor,
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 20),
      ),
    ),
  );
}
