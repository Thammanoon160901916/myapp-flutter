import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Twitter",
        theme: ThemeData(
            primaryColor: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const Twitter());
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    Tweet(
      avatar_url:
          'https://www.healthtodaythailand.in.th/wp-content/uploads/2018/08/Smile_Website-1.jpg',
      postText: 'สวัสดีครับทุกคน',
      name: "Tha.putt",
      account: "@Bu1916_1",
    ),
    Tweet(
      avatar_url:
          'https://cdn.icon-icons.com/icons2/1839/PNG/512/womanglasses18_116013.png',
      postText: 'ผมชื่อ ธรรมนูญ พุทธขันธ์ วิศวกรคอมพิวเตอร์ปี 4',
      name: "Tha.putt",
      account: "Bu1916_2",
    ),
    Tweet(
      avatar_url:
          'https://cdn.icon-icons.com/icons2/1839/PNG/512/womanglasses18_116013.png',
      postText: 'วิชาที่ทำอยู่ตอนนี้ CE454',
      name: "Tha.putt",
      account: "Bu1916_3",
    ),
    Tweet(
      avatar_url:
          'https://cdn.icon-icons.com/icons2/1839/PNG/512/womanglasses18_116013.png',
      postText: 'ชื่อแอพ myapp เป็นแอพเกี่ยวโชเซียล ที่ทำในรูปแบบ DEMO นั้นเอง',
      name: "Tha.putt",
      account: "@Bu1916_4",
    ),
    Tweet(
      avatar_url:
          'https://cdn.icon-icons.com/icons2/1839/PNG/512/womanglasses18_116013.png',
      postText: 'การทำโปรเจคมีทั้งแมชชีนทั่วไป',
      name: "Tha.putt",
      account: "@Bu1916_5",
    ),
    Tweet(
      avatar_url:
          'https://cdn.icon-icons.com/icons2/1839/PNG/512/womanglasses18_116013.png',
      postText: 'ทั้งทำซอฟแวร์ที่คล้ายๆเกม',
      name: "Tha.putt",
      account: "@Bu1916_6",
    ),
    Tweet(
      avatar_url:
          'https://cdn.icon-icons.com/icons2/1839/PNG/512/womanglasses18_116013.png',
      postText: 'ในการฝึกงานก็ทำในการจัดการงานต่างๆ ให้ดี',
      name: "Tha.putt",
      account: "@Bu1916_7",
    ),
    Tweet(
      avatar_url:
          'https://cdn.icon-icons.com/icons2/1839/PNG/512/womanglasses18_116013.png',
      postText: 'ส่วนงานชิ้นการทำให้คล้ายทวีตเตอร์ หรือ instagram เป็นต้น',
      name: "Tha.putt",
      account: "@Bu1916_8",
    ),
    Tweet(
      avatar_url:
          'https://cdn.icon-icons.com/icons2/1839/PNG/512/womanglasses18_116013.png',
      postText: 'จบ',
      name: "Tha.putt",
      account: "@Bu1916_9",
    ),
    Tweet(
      avatar_url:
          'https://play-lh.googleusercontent.com/OuZqDwJcoCna3sbEjlV58dwBxk2bFYdgwRqe3xOphhAm5RymSSfud3qNSy4pSaRYB9M=w240-h480-rw',
      postText: 'บ๊าย บาย',
      name: "Tha.putt",
      account: "@Bu1916_10",
    ),
  ];

  var tweetShow = [];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.all(10.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://e1.pngegg.com/pngimages/288/136/png-clipart-education-presentation-texte-silhouette-dessin-anime-organisation-salaire-male.png'),
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_off_outlined, Colors.blue),
            buildIconButton(Icons.notifications_outlined, Colors.blue),
            buildIconButton(Icons.email_outlined, Colors.blue)
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            tweetShow.insert(0, tweetList[counter]);
            counter++;
          });
        },
      ),
    );
  }

  Widget listOfTweets() {
    return Container(
      color: Colors.white,
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return tweetShow[index];
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 10,
              ),
          itemCount: tweetShow.length),
    );
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(icon, color: color),
      onPressed: () {},
    );
  }
}
