import 'package:flutter/material.dart';
import 'package:ecommerce_ui/core.dart';
import '../controller/notification_controller.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  Widget build(context, NotificationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<NotificationView> createState() => NotificationController();
}
