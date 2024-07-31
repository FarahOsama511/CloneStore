import 'package:flutter/material.dart';
import 'package:my_counter_app/choice.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int selectedImageIndex = 0;
  var choices = <choice>[
    choice(
        image: Image.asset('assets/images/image1-removebg-preview.png'),
        assetpath: 'assets/images/image1-removebg-preview.png'),
    choice(
        image: Image.asset('assets/images/image2-removebg-preview.png'),
        assetpath: 'assets/images/image2-removebg-preview.png'),
    choice(
        image: Image.asset('assets/images/image3-removebg-preview.png'),
        assetpath: 'assets/images/image3-removebg-preview.png'),
    choice(
        image: Image.asset('assets/images/image4-removebg-preview.png'),
        assetpath: 'assets/images/image4-removebg-preview.png'),
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.pink,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: 385,
                height: 750,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.only(top: 50, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 205, 205)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.arrow_back),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: selectedImageIndex == 0
                                    ? Colors.red
                                    : Color.fromARGB(255, 206, 205, 205)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedImageIndex = 0;
                              });
                            },
                            child: Image.asset(choices[0].assetpath),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: selectedImageIndex == 1
                                    ? Colors.red // Highlight selected image
                                    : Color.fromARGB(255, 206, 205, 205)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedImageIndex = 1;
                              });
                            },
                            child: Image.asset(choices[1].assetpath),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: selectedImageIndex == 2
                                    ? Colors.red // Highlight selected image
                                    : Color.fromARGB(255, 206, 205, 205)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedImageIndex = 2;
                              });
                            },
                            child: Image.asset(choices[2].assetpath),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: selectedImageIndex == 3
                                    ? Colors.red
                                    : Color.fromARGB(255, 206, 205, 205)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedImageIndex = 3;
                              });
                            },
                            child: Image.asset(choices[3].assetpath),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Sony WH-1000XM4',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Container(
                              padding: EdgeInsets.all(4.5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 223, 220, 220)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                  Text(
                                    ' 4.9',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Wireless Over-ear industry Leading Noise Canceling Headphones with Microphone',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 250, 228, 235),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.list_alt,
                                color: Colors.pink,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Product Specifications',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 250, 228, 235),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.category,
                                color: Colors.pink,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Colors',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Container(
                              child: const Icon(
                                Icons.circle,
                                color: Color.fromARGB(255, 61, 59, 59),
                              ),
                            ),
                            const Icon(
                              Icons.circle,
                              color: Color.fromARGB(255, 166, 162, 162),
                            ),
                            const Icon(
                              Icons.circle,
                              color: Color.fromRGBO(240, 238, 238, 1),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 75,
                        ),
                        Row(
                          children: [
                            const Text(
                              '\$349',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              '.99',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Row(
                                children: [
                                  Text(
                                    'Add To Cart ',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.pink,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 10)),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 133.5),
                width: 250,
                height: 350,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 238, 220, 226),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromARGB(255, 206, 205, 205)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.favorite_outline_sharp),
                      ),
                      Image.asset(choices[selectedImageIndex].assetpath),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
          ),
        ));
  }
}
