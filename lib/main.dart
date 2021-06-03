import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(DesignApp());
}

class DesignApp extends StatefulWidget {
  @override
  _DesignAppState createState() => _DesignAppState();
}

class _DesignAppState extends State<DesignApp> {
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              //height: size.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/top.png'))),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 18, left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://www.woolha.com/media/2020/03/eevee.png'),
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.blue.shade300,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90, left: 16),
              child: Column(
                children: [
                  Container(
                    //height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TAC 272.0",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "Dkk 272.0",
                          style: TextStyle(fontSize: 15, color: Colors.white54),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  Divider(
                    height: 15,
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black12,
                    thickness: 2,
                  ),
                  Container(
                    //height: 100,
                    child: Column(
                      children: [
                        Text(
                          "Request from",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        Text(
                          "01917445888",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 15,
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black12,
                    thickness: 2,
                  ),
                  Container(
                    //height: 100,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Request from",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        Text(
                          "01917445888",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 15,
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black12,
                    thickness: 2,
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/middle.png",
                        width: 350,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 30),
                        child: Container(
                          child: Text(
                            "1.0    =     1.0 ",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 30),
                        child: Container(
                          child: Text(
                            "DKK                           TAC",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80, left: 30),
                        child: Container(
                          child: Text(
                            "*The Exchange rate will be same untill December 2021",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Do you know?",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                        Divider(
                          height: 15,
                          indent: 100,
                          endIndent: 100,
                          color: Colors.black12,
                          thickness: 2,
                        ),
                        Text("TAC Mone is one of the popular"),
                        Text("virtual moneyapp in Denmark."),
                        Text("You can make payment using it."),
                        Text("Able to send mone to your friend and family.")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.red[300],
                ),
                label: "HOME",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Colors.blue[400],
                ),
                label: "EXCHANGE",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.send,
                  color: Colors.blue[400],
                ),
                label: "SEND",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.request_page,
                  color: Colors.blue[400],
                ),
                label: "REQUEST",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more,
                  color: Colors.blue[400],
                ),
                label: "MORE",
                backgroundColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
