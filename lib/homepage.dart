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
                            'Azonto',
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
                            'Ballet',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 490,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _danceBox(
                        image: 'images/blackboys.jpg',
                        color: Color(0xFFDCDDE1),
                      ),
                      _danceBox(
                        image: 'images/whitegirls.jpg',
                        color: Color(0xFFDCDDE1),
                      ),
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

class _danceBox extends StatelessWidget {
  const _danceBox({required this.image, required this.color});
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 230,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                width: 200,
              ),
              SizedBox(height: 30),
              Text(
                'Black Boys Dance Group',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 5),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and mor",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Expanded(
                child: TextButton(onPressed: () {}, child: Text("Read More")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
