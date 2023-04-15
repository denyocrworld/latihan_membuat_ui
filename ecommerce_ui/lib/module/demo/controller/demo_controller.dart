import 'package:flutter/material.dart';
import 'package:ecommerce_ui/state_util.dart';
import '../view/demo_view.dart';

class DemoController extends State<DemoView> implements MvcController {
  static late DemoController instance;
  late DemoView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  List categories = [
    {
      "label": "Jackets",
      "value": "Jackets",
    },
    {
      "label": "Shoes",
      "value": "Shoes",
    },
    {
      "label": "T-Shirts",
      "value": "T-Shirts",
    }
  ];
}
