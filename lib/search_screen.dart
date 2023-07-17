import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            right: 12.0, left: 12.0, top: 32.0, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.shade300),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey.shade300),
                      child: const Center(
                          child: Icon(
                        Icons.notifications_active_outlined,
                        color: Colors.black,
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width / 9, left: 0),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue.shade900),
                      child: const Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '74 results for',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "'Photographer'",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 70),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(62.0)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 52.0, horizontal: 16),
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(62.0)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 28.0, horizontal: 16.0),
                    height: MediaQuery.of(context).size.height / 3,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 32),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(62.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Photographer',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 28.0),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.white10,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.save,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: const Size(100, 30),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0))),
                            onPressed: () {},
                            child: Text(
                              "20/h",
                              style: TextStyle(color: Colors.blue.shade900),
                            )),
                        const Text(
                          'لا تخلي الفشل يسيطر عليك انت سيطر عليه وتغلب ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        const Text(
                          'لا تخلي الفشل يسيطر عليك انت سيطر عليه وتغلب ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white60,
                                    minimumSize: const Size(100, 30),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0))),
                                onPressed: () {},
                                child: const Text(
                                  "Photography",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                            const SizedBox(
                              width: 8.0,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white60,
                                    minimumSize: const Size(100, 30),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0))),
                                onPressed: () {},
                                child: const Text(
                                  "Photoshop",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 150,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/dislike.png'),
                          fit: BoxFit.contain)),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 150,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/like.png'),
                          fit: BoxFit.contain)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
