import 'package:flutter/material.dart';

class ContainerButtonModal extends StatelessWidget {
  final Color? bgColor;
  final double? containerWidth;
  final String itext;

  const ContainerButtonModal(
      {super.key, this.bgColor, this.containerWidth, required this.itext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerWidth,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          itext,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
