import 'package:booking_app/UI/all_hotels.dart';
import 'package:booking_app/UI/popular.dart';
import 'package:booking_app/UI/recommended.dart';
import 'package:booking_app/UI/trending.dart';
import 'package:booking_app/widgets/category.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List _category = [
    'All Hotels',
    'Recommended',
    'Popular',
    'Trending',
  ];
  final List _pages = [
    const AllHotels(),
    const Recommended(),
    const Popular(),
    const Trending(),
  ];

  int _isSelected = 0;
  int _pagesIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Row(
            children: [
              const SizedBox(
                width: 21,
              ),
              Container(
                width: 35,
                height: 35,
                color: const Color(0xFF1AB65C),
              ),
            ],
          ),
          title: const Text(
            'Bolu',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 35,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_outline_sharp,
                  color: Colors.black,
                  size: 35,
                )),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 21, top: 25),
              child: Text(
                'Hello, Kezia',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFFC4C4C4),
                      size: 30,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF2F2F2),
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                        fontSize: 14, color: Color(0xFFC4C4C4)),
                    suffixIcon: const Icon(Icons.manage_search_rounded,
                        size: 30, color: Color(0xFF1AB65C)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color(0xFFF2F2F2), width: 2))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Container(
                width: double.infinity,
                height: 30,
                color: Colors.white,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _isSelected = index;
                            _pagesIndex =index;
                            // Navigator.pushNamed(context, widget.page);
                          });
                        },
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: _isSelected == index
                                  ? const Color(0xFF1AB65C)
                                  : Colors.white,
                              border: Border.all(
                                  color: const Color(0xFF1AB65C), width: 2)),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                _category[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: _isSelected == index
                                        ? Colors.white
                                        : const Color(0xFF1AB65C),
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _category.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 400,
              color: const Color(0xFFF8FAFF),
              child: _pages[_pagesIndex],

            )
          ],
        ),
      ),
    );
  }
}
