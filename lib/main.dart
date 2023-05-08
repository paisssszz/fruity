import 'package:flutter/material.dart';
import 'page/detail.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade700,
      body: Container(
        color: Colors.blueGrey.shade700,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Row(
                children: [
                   Icon(
                    Icons.notes,
                    color: Colors.grey,
                    size: 40.0,
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                        Icons.shopping_bag_outlined,
                      color: Color(0xFFB5B5B5),
                      size: 32,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(
                        image: AssetImage('asset/image/pais2.png'),
                        fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFF2c2c2c),
                borderRadius: BorderRadius.circular(40)
              ),
              width: MediaQuery.of(context).size.width,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -40,
                    right: -40,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('asset/image/buah2.png'),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 30, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'OFFER',
                          style: TextStyle(
                              color: Color(0xFFdaad8c),
                              fontFamily: 'Quick Sand',
                              fontSize: 20,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 5
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Discount up to 40% Off',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quick Sand',
                                fontSize: 27,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 300,
                          child: Text(
                            'In honor of World Health Day We would like to give you this amazing offers.',
                            style: TextStyle(
                                color: Color(0xFFdadee8),
                                fontFamily: 'Sand',
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFeeac5c)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      )
                                  )
                              ),
                              child: const Text(
                                'View Offers',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quick Sand',
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: const [
                  Text(
                    'Recommended Fruits',
                    style: TextStyle(
                      color: Color(0xFFd2d2db),
                      fontFamily: 'Quick Sand',
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Color(0xFFddb08e),
                      fontFamily: 'Quick Sand',
                      fontSize: 14,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios_rounded, color: Color(0xFFddb08e))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 160,
                              height: 120,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(9999), topRight: Radius.circular(9999)),
                                color: Color(0xFF694c2a),
                              ),
                            ),
                            Positioned(
                              top: -40,
                              left: 5,
                              child: Container(
                                width: 160,
                                height: 160,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/image/nanas3.png')
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                      Container(
                        width: 160,
                        height: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                          color: Colors.black87,
                        ),
                        child: TextButton(
                            onPressed: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>Detail()),
                             );
                            },
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Icon(Icons.star,size: 13, color: Color(0xFFeeac5c),),
                                  ),
                                  Text(
                                    '4.5',
                                    style:
                                    
                                    TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Quick Sand',
                                      fontSize: 14,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w500,
                                      
                                      
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'FRUIT',
                                    style: TextStyle(
                                        color: Color(0xFFf7b360),
                                        fontFamily: 'Quick Sand',
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 3
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6, bottom: 5),
                                    child: Text(
                                      'Pinneaple',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Quick Sand',
                                          fontSize: 15,
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Rp. 80.000',
                                  style: TextStyle(
                                    color: Color(0xFFd4af83),
                                    fontFamily: 'Quick Sand',
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                    
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                SizedBox(
                                  height: 20,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'per kg',
                                        style: TextStyle(
                                          color: Color(0xFFa6a6a6),
                                          fontFamily: 'Quick Sand',
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      )
                    ]
                  ),
                  Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                               width: 160,
                              height: 120,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(9999), topRight: Radius.circular(9999)),
                                color: Color(0xFF694c2a),
                              ),
                            ),
                            Positioned(
                              top: -40,
                              left: -19,
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('asset/image/apel.png')
                                    )
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 160,
                          height: 100,
                          decoration:const BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                            color: Colors.black87,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:const EdgeInsets.only(top: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children:const [
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Icon(Icons.star,size: 16, color: Color(0xFFeeac5c),),
                                    ),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Quick Sand',
                                        fontSize: 14,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:const [
                                    Text(
                                      'FRUIT',
                                      style: TextStyle(
                                          color: Color(0xFFf7b360),
                                          fontFamily: 'Quick Sand',
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 3
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 6, bottom: 5),
                                      child: Text(
                                        'Apple',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Quick Sand',
                                          fontSize: 15,
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    'Rp. 25.000',
                                    style: TextStyle(
                                      color: Color(0xFFd4af83),
                                      fontFamily: 'Quick Sand',
                                      fontSize: 14,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  SizedBox(
                                    height: 20,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          'per kg',
                                          style: TextStyle(
                                            color: Color(0xFFa6a6a6),
                                            fontFamily: 'Quick Sand',
                                            fontSize: 12,
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                         ]
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ), 
            bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade900,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: 50,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.amber, width: 2))),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.orange[400],
                size: 30,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.task,
              color: Colors.white,
              size: 30,
            ),
          ),
        ]),
            ),
           );
          }
         }
