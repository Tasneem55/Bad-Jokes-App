import 'package:flutter/material.dart';

class AllHotels extends StatefulWidget {
  const AllHotels({Key? key}) : super(key: key);

  @override
  State<AllHotels> createState() => _AllHotelsState();
}

class _AllHotelsState extends State<AllHotels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFFE8F8EF),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 19),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 14),
                  child: Row(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFF304FFE)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                'Intercontinental Hotel',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    '\$205',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF1AB65C)),
                                  ),
                                  Text(
                                    '/night',
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          const Text(
                            'Lagos, Nigeria',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF242424)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Color(0xFFFED201),
                                size: 18,
                              ),
                              Text(
                                '5.0',
                                style: TextStyle(
                                    color: Color(0xFF1AB65C), fontSize: 13),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                '(4,345 reviews)',
                                style: TextStyle(
                                    color: Color(0xFF3D3D3D), fontSize: 13),
                              ),
                              // Expanded(child: SizedBox()),
                              SizedBox(
                                width: 70,
                              ),
                              Icon(
                                Icons.bookmark_outline_sharp,
                                color: Colors.black,
                                size: 16,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: 12,
      ),
    ));
  }
}
