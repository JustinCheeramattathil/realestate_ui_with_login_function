import 'package:flutter/material.dart';
import 'package:realestate_ui/pages/home_page/details_page.dart';

class CustomHomeCard extends StatelessWidget {
  const CustomHomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailsPage()));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 230,
        height: 400,
        child: Stack(
          children: [
            Container(
              height: 375,
              width: 250,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://hips.hearstapps.com/hmg-prod/images/blue-dining-room-ideas-dscf1742-1572367217.jpg?crop=1xw:1xh;center,top&resize=980:*'),
                      fit: BoxFit.cover)),
            ),
            const Positioned(
              bottom: 1,
              right: 5,
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Color.fromRGBO(7, 28, 31, 1),
                child:Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
              bottom: 40,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Family House',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        'Yangon,Shwe Taung kyar',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
