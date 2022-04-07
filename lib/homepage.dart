import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: CircleAvatar(
                              child: Icon(Icons.add, color: Colors.white),
                              radius: 30,
                              backgroundColor: Colors.red,
                            ),
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'images/Lady-Black.jpg',
                            ),
                            radius: 30,
                          ),
                          SizedBox(width: 5),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'images/Face-Off.jpg',
                            ),
                            radius: 30,
                          ),
                          SizedBox(width: 5),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'images/white-lady.jpg',
                            ),
                            radius: 30,
                          ),
                          SizedBox(width: 5),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'images/LinkedIn.jpg',
                            ),
                            radius: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFF111111),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            radius: 15,
                          ),
                          Container(
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Choose Your Style',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xFF111111)),
                            child: Center(
                              child: Text(
                                'All',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            'Modern',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            'HipHop',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 310,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // _buildCard(
                      //   image: 'images/watch.png',
                      //   color: Colors.white,
                      // ),
                      // _buildCard(
                      //   image: 'images/watch2.png',
                      //   color: Color(0xFFDCDDE1),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
