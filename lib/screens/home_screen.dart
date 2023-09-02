import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List tabs = [
    'All',
    'Clothes',
    'Shoes',
    'Bags',
    'Accessories',
  ];

  List images = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
  ];

  List productsTitles = [
    "Warm Zipper",
    "Knitted Sweater",
    "Autumn Jacket",
    "Black Jacket",
  ];

  List productsPrices = [
    "\$120",
    "\$100",
    "\$80",
    "\$90",
  ];
  List reviews = [
    "4.5",
    "4.0",
    "4.5",
    "4.0",
  ];
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
                const Banner(),
                const SizedBox(
                  height: 20,
                ),
                ScrollCategories(tabs: tabs),
                const SizedBox(
                  height: 20,
                ),
                ScrollProducts(
                    images: images,
                    productsTitles: productsTitles,
                    reviews: reviews,
                    productsPrices: productsPrices),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Popular Products',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GridProducts(
                    productsTitles: productsTitles,
                    images: images,
                    reviews: reviews,
                    productsPrices: productsPrices)
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

class GridProducts extends StatelessWidget {
  const GridProducts({
    super.key,
    required this.productsTitles,
    required this.images,
    required this.reviews,
    required this.productsPrices,
  });

  final List productsTitles;
  final List images;
  final List reviews;
  final List productsPrices;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productsTitles.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.55,
        // crossAxisSpacing: 40,
      ),
      itemBuilder: (context, index) {
        return SizedBox(
          // margin: const EdgeInsets.only(right: 10),
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 220,
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          images[index],
                          width: 180,
                          height: 220,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Positioned(
                    //   right: 10,
                    //   top: 10,
                    //   child: Container(
                    //     height: 30,
                    //     width: 30,
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(10),
                    //     ),
                    //     child: const Center(
                    //       child: Icon(
                    //         Icons.favorite_border,
                    //         color: Color(0xFFDB3022),
                    //       ),
                    //     ),
                    //   ),
                    // )
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Color(0xFFDB3022),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                productsTitles[index],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Text(
                    '${'(' + reviews[index]})',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    productsPrices[index],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFDB3022),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class ScrollProducts extends StatelessWidget {
  const ScrollProducts({
    super.key,
    required this.images,
    required this.productsTitles,
    required this.reviews,
    required this.productsPrices,
  });

  final List images;
  final List productsTitles;
  final List reviews;
  final List productsPrices;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            width: 320,
            margin: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.cover,
                            height: 180,
                            width: 180,
                          ),
                        ),
                      ),
                      // Positioned(
                      //   right: 10,
                      //   top: 10,
                      //   child: Container(
                      //     height: 30,
                      //     width: 30,
                      //     decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //     child: const Center(
                      //       child: Icon(
                      //         Icons.favorite_border,
                      //         color: Color(0xFFDB3022),
                      //       ),
                      //     ),
                      //   ),
                      // )
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Color(0xFFDB3022),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productsTitles[index],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        width: 120,
                        child: Text(
                          "lorem ipsum lorem ipsumlorem ipsum lorem ipsum lorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum",
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Text(
                            '${'(' + reviews[index]})',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            productsPrices[index],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFDB3022),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class ScrollCategories extends StatelessWidget {
  const ScrollCategories({
    super.key,
    required this.tabs,
  });

  final List tabs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: tabs.length,
          itemBuilder: (context, index) {
            return FittedBox(
              child: Container(
                  height: 40,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: FittedBox(
                    child: Text(
                      tabs[index],
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 18,
                      ),
                    ),
                  ))),
            );
          },
        ));
  }
}

class Banner extends StatelessWidget {
  const Banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 1,
        //     // offset: Offset(0, 10),
        //     spreadRadius: 2,
        //   )
        // ],
        color: Color(0xFFFFF0DD),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Image.asset(
        'assets/images/freed.png',
        fit: BoxFit.cover,
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
