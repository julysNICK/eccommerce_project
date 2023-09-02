import 'package:ecommerce_project/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class ProductDetailsPopup extends StatelessWidget {
  final iStyle = const TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  const ProductDetailsPopup({super.key});

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
            child: const Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ],
                )),
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
