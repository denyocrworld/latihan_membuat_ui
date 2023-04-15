import 'package:flutter/material.dart';
import 'package:ecommerce_ui/state_util.dart';
import '../view/notification_view.dart';

class NotificationController extends State<NotificationView> implements MvcController {
  static late NotificationController instance;
  late NotificationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}