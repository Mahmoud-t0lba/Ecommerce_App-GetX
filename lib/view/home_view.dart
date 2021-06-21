import 'package:ecommerce_app/color.dart';
import 'package:ecommerce_app/core/view_model/home_view_model.dart';
import 'package:ecommerce_app/view/daetilas_view.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:ecommerce_app/view/widgets/listViewCategory.dart';
import 'package:ecommerce_app/view/widgets/listViewProducts.dart';
import 'package:ecommerce_app/view/widgets/searchTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final List<String> names = <String>[
    'men',
    's',
    's',
    's',
    's',
    's',
    's',
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: Get.find(),
      builder: (controller) => controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 100, left: 20, right: 20),
                  child: Column(
                    children: [
                      searchTextFormField(),
                      SizedBox(height: 30),
                      CustomText(
                        text: "Categories",
                      ),
                      SizedBox(height: 30),
                      listViewCategory(),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Best Selling",
                            fontSize: 18,
                          ),
                          CustomText(
                            text: "See all",
                            fontSize: 16,
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      listViewProducts(),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
