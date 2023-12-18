import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: screenHeight * 0.4,
              child: Image.network(
                'https://images.ctfassets.net/n2ifzifcqscw/3QRMlAcJFrYAEAbhziixZW/d4b9aa50215c5ea7a161b8a6b59f1974/hero-real-estate-facts-trends.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight * 0.3),
              child: Material(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 30, top: 30, right: 10, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$4,999',
                            style: TextStyle(
                                color: Color.fromRGBO(7, 28, 31, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.bookmark_border)
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Family Home',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.spa,
                                size: 10,
                              ),
                              Text('2'),
                              Icon(
                                Icons.room_service,
                                size: 15,
                              ),
                              Text('3'),
                              Icon(
                                Icons.home,
                                size: 15,
                              ),
                            ],
                          ),
                          Text('12,000 sqft')
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                      Text(
                        'Home Loan calculator',
                        style: TextStyle(
                            color: Colors.black.withOpacity(.8),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$1,602/month'),
                            Icon(
                              Icons.question_answer,
                              color: Color.fromRGBO(7, 28, 31, 1),
                            )
                          ]),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Your Home Loan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('Apply for conditional approval'),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 2),
                        child: SizedBox(
                          width: double.infinity,
                          height: 160,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(30), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(48), // Image radius
                              child: Image.network(
                                  'https://cdn.buttercms.com/Ym1iRZNbRHOeWv0X4x3w',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Text('Ask question'),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  color: Color.fromRGBO(196, 221, 228, 0.984)),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'Express Interest',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                color: Color.fromRGBO(7, 28, 31, 1),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
