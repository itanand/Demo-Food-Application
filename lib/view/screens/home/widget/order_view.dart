// import 'package:efood_multivendor/controller/auth_controller.dart';
import 'package:efood_multivendor/controller/order_controller.dart';
// import 'package:efood_multivendor/helper/responsive_helper.dart';
// import 'package:efood_multivendor/util/dimensions.dart';
// import 'package:efood_multivendor/util/styles.dart';
// import 'package:efood_multivendor/view/base/custom_app_bar.dart';
// import 'package:efood_multivendor/view/base/not_logged_in_screen.dart';
import 'package:efood_multivendor/view/screens/order/widget/order_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderViews extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderViews> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();


      Get.find<OrderController>().getHistoryOrders(1, notify: false);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderController>(
        builder: (orderController) {
          return Column(
              children: [
                OrderView(isRunning: true),
              ],
            );
        },);
  }
}
