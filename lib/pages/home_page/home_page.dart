import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:realestate_ui/pages/home_page/widgets/custombottomcard.dart';
import 'package:realestate_ui/pages/home_page/widgets/customhome_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Signout'),
                            content: const Text(
                                'Are you sure? Do you want to exit from the app.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  FirebaseAuth.instance.signOut();
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  'Yes',
                                  style: TextStyle(
                                      color: Color.fromRGBO(7, 28, 31, 1)),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  'Close',
                                  style: TextStyle(
                                      color: Color.fromRGBO(7, 28, 31, 1)),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.logout)),
                const Text('FRACSPACE',
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(196, 221, 228, 0.984),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSApOg_tNk6B2MFyK6DJVmW5ws8xR4RvJEqAA&usqp=CAU'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Discover',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            const Text(
              'Suitable Home',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(196, 221, 228, 0.984),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Find a good home',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    const Icon(Icons.notifications_none),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text('2'),
                          ),
                          decoration: const BoxDecoration(
                              color: Colors.orange, shape: BoxShape.circle)),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomHomeCard(),
                  CustomHomeCard(),
                  CustomHomeCard(),
                  CustomHomeCard(),
                  CustomHomeCard()
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            index == 1
                ? const CustomBottomCard(
                    icon: Icon(Icons.home),
                    str: 'home',
                  )
                : IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                  ),
            index == 2
                ? const CustomBottomCard(
                    icon: Icon(Icons.bookmark_border),
                    str: 'Bookmark',
                  )
                : IconButton(
                    icon: const Icon(Icons.bookmark_border),
                    onPressed: () {
                      setState(() {
                        index = 2;
                      });
                    },
                  ),
            index == 3
                ? const CustomBottomCard(
                    icon: Icon(Icons.message),
                    str: 'Message',
                  )
                : IconButton(
                    icon: const Icon(Icons.message),
                    onPressed: () {
                      setState(() {
                        index = 3;
                      });
                    },
                  ),
            index == 4
                ? const CustomBottomCard(
                    icon: Icon(Icons.perm_identity),
                    str: 'Profile',
                  )
                : IconButton(
                    icon: const Icon(Icons.perm_identity),
                    onPressed: () {
                      setState(() {
                        index = 4;
                      });
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
