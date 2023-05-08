import 'package:flutter/material.dart';
import 'package:flutter_application_28/main.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2c2c2c),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    size: 40,
                    color: Color(0xFFa9a9a9),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFF494949),
                    shape: BoxShape.circle
                  ),
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: const [
              Text(
                'FRUIT',
                style: TextStyle(
                    color: Color(0xFFd6b184),
                    fontFamily: 'Quick Sand',
                    fontSize: 16,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 10
                ),
              ),
              Text(
                'Pinneaple',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Quick Sand',
                    fontSize: 36,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 130),
                width: MediaQuery.of(context).size.width,
                height: 529,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(170), topRight: Radius.circular(170)),
                  color: Color(0xFF1e1e1e)
                ),
              ),
              Positioned(
                top: 0,
                width: 500,
                left: -44,
                child: Container(
                  height: 270,
                  width: 270,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/image/nanas3.png'),
                      )
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Rp. 80.000',
                          style: TextStyle(
                            color: Color(0xFFd2ae82),
                            fontFamily: 'Quick Sand',
                            fontSize: 42,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                'Per Kg',
                                style: TextStyle(
                                  color: Color(0xFFaaaaaa),
                                  fontFamily: 'Quick Sand',
                                  fontSize: 18,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 45,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                              color: Color(0xFF494949),
                              shape: BoxShape.circle
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.favorite_border_rounded,
                              color: Color(0xFFff8668),
                              size: 54,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,size: 18, color: Color(0xFFeeac5c),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,size: 18, color: Color(0xFFeeac5c),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,size: 18, color: Color(0xFFeeac5c),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,size: 18, color: Color(0xFFeeac5c),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,size: 18, color: Color(0xFFeeac5c),),
                          ),
                          Text(
                            '5.0',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quick Sand',
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 420,
                child: SizedBox(
                width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                color: Color(0xFF2c2c2c),
                                shape: BoxShape.circle
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                color: Color(0xFFd2ae82),
                                size: 45,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            'Quality \n assurance',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quick Sand',
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                color: Color(0xFF2c2c2c),
                                shape: BoxShape.circle
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.delivery_dining_sharp,
                                color: Color(0xFFd2ae82),
                                size: 50,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            'Fast \n delivery',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quick Sand',
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                color: Color(0xFF2c2c2c),
                                shape: BoxShape.circle
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.fastfood_outlined,
                                color: Color(0xFFd2ae82),
                                size: 45,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            'Best-in \n taste',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quick Sand',
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 540,
                left: 20,
                child: Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF2c2c2c),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.remove, color: Colors.white, size: 20,),
                      Text(
                        '7',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quick Sand',
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(Icons.add, color: Colors.white, size: 20,),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 540,
                right: 20,
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
                  child: Row(
                    children: const [
                      Text(
                        'Go to cart',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Quick Sand',
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,)
                    ],
                  ),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
