import 'package:ecommerce_project/screens/navigation_screen.dart';
import 'package:ecommerce_project/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class OrderSucessScreen extends StatefulWidget {
  const OrderSucessScreen({super.key});

  @override
  State<OrderSucessScreen> createState() => _OrderSucessScreenState();
}

class _OrderSucessScreenState extends State<OrderSucessScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Column(
          children: [
            Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Pedido realizado com sucesso!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Código do pedido: 123456',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NavigationScreen(),
                ),
              );
            },
            child: ContainerButtonModal(
              itext: "Voltar para o início",
              containerWidth: MediaQuery.of(context).size.width,
              bgColor: const Color(0xFFDB3022),
            ),
          ),
        ),
      ],
    ));
  }
}
