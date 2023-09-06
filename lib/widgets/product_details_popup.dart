import 'package:ecommerce_project/screens/cart_screen.dart';
import 'package:ecommerce_project/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class ProductDetailsPopup extends StatelessWidget {
  final iStyle = const TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  ProductDetailsPopup({super.key});

  List<Color> clrs = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Size: ", style: iStyle),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Color: ", style: iStyle),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Total: ", style: iStyle),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Text("M", style: iStyle),
                              const SizedBox(
                                width: 30,
                              ),
                              Text("L", style: iStyle),
                              const SizedBox(
                                width: 30,
                              ),
                              Text("XL", style: iStyle),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                for (var i = 0; i < 4; i++)
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: clrs[i],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "-",
                                style: iStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "1",
                                style: iStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "+",
                                style: iStyle,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total: ", style: iStyle),
                      const Text(
                        "\$ 120",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CartScreen();
                        }));
                      },
                      child: ContainerButtonModal(
                        containerWidth: MediaQuery.of(context).size.width / 1.5,
                        itext: "Checkout",
                        bgColor: const Color(0xFFDB3022),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: ContainerButtonModal(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        itext: "Buy Now",
        bgColor: const Color(0xFFDB3022),
      ),
    );
  }
}
