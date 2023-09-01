import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    searchBox(context),
                    const Notification(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFF0DD),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/freed.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container searchBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 50,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        color: Colors.black12.withOpacity(0.05),
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black12.withOpacity(0.05),
        //     blurRadius: 10,
        //     offset: const Offset(0, 10),
        //     spreadRadius: 5,
        //   )
        // ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 18,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xFFDB3022),
          ),
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 6,
      decoration: BoxDecoration(
        color: Colors.black12.withOpacity(0.05),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black12.withOpacity(0.05),
        //     blurRadius: 10,
        //     offset: const Offset(0, 10),
        //     spreadRadius: 5,
        //   )
        // ],
      ),
      child: const Center(
        child: Icon(
          Icons.notifications_none,
          color: Color(0xFFDB3022),
        ),
      ),
    );
  }
}
