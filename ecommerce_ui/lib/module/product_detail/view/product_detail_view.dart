import 'package:ecommerce_ui/shared/widget/color_picker/color_picker.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/core.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../shared/widget/circle_category_picker/circle_category_picker.dart';
import '../controller/product_detail_controller.dart';

class ProductDetailView extends StatefulWidget {
  final Map item;
  const ProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, ProductDetailController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(""),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.36,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    item["photo"],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.height * 0.36) - 30,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(24.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["product_name"],
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                item["category"],
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 6.0,
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.remove,
                                  size: 18.0,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 12.0,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 12.0,
                                ),
                                Icon(
                                  Icons.add,
                                  size: 18.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemSize: 16.0,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        const Text(
                          "(320 Reviews)",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Available in stock",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    QCircleCategoryPicker(
                      label: "Size",
                      items: const [
                        {
                          "label": "S",
                          "value": "S",
                        },
                        {
                          "label": "M",
                          "value": "M",
                        },
                        {
                          "label": "L",
                          "value": "L",
                        },
                        {
                          "label": "XL",
                          "value": "XL",
                        },
                        {
                          "label": "XXL",
                          "value": "XXL",
                        }
                      ],
                      value: "S",
                      onChanged: (index, label, value, item) {},
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    QColorPicker(
                      label: "Size",
                      items: const [
                        {
                          "label": Colors.white,
                          "value": "White",
                        },
                        {
                          "label": Colors.black,
                          "value": "Black",
                        },
                        {
                          "label": Colors.grey,
                          "value": "Grey",
                        },
                        {
                          "label": Colors.orange,
                          "value": "Orange",
                        },
                        {
                          "label": Colors.red,
                          "value": "Red",
                        }
                      ],
                      value: "S",
                      onChanged: (index, label, value, item) {},
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 72,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: const [
              Expanded(
                child: Text("Proceed to Checkout"),
              ),
              Icon(
                Icons.arrow_circle_right,
                size: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductDetailView> createState() => ProductDetailController();
}
