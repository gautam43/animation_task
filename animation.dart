import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class animation extends StatefulWidget {
  @override
  _animationState createState() => _animationState();
}

var count = new List();

class _animationState extends State<animation> with TickerProviderStateMixin {
  AnimationController myanicon, myanicon1;
  var animation1;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon1 =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    print(myanicon1);

    animation1 = CurvedAnimation(parent: myanicon1, curve: Curves.easeInCubic)
      ..addListener(() {
        setState(() {
          count.add(animation1.value);
          if (animation1.value == 1) {
            myanicon1.forward(from: 0.4);
          }
          print(animation1.value);
        });
      });
    myanicon1.forward();

    myanicon = AnimationController(vsync: this, duration: Duration(seconds: 6));
    animation = CurvedAnimation(parent: myanicon, curve: Curves.easeInExpo)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    myanicon.forward();
    print(myanicon);
    print(animation.value);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10.0,
          title: Text(
            "Hadoop",
            style: TextStyle(fontSize: 25 * animation.value / 2 + 10),
          ),
          backgroundColor: Color.fromRGBO(255, 44, 55, 150 * animation.value),
          actions: [
            Icon(
              Icons.bubble_chart,
              size: 20 * animation1.value + 30,
            )
          ],
          leading: IconButton(
            icon: Icon(
              Icons.notifications,
              size: 10 * animation.value + 20,
              color: Color.fromRGBO(15, 5, 12, 10 * animation1.value),
            ),
            onPressed: () => Toast.show("Master - Slave Cluster ", context,
                duration: 5,
                backgroundColor:
                    Color.fromRGBO(255, 21, 254, 19 * animation.value)),
          )),
      body: GestureDetector(
        onTap: () {
          myanicon.forward(from: 0.5);
          print("clicked");
          myanicon1.stop();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment(6.3 * animation1.value / 2 - 1.5,
                  5 * animation1.value / 2 - 1.5),
              child: Container(
                  //alignment: Alignment.bottomCenter,

                  width: 100 * animation.value,
                  height: 100 * animation.value,
                  //color: Color.fromRGBO(255, 0, 0, 15),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.logolynx.com/images/logolynx/d9/d92c9fac0ed96692b8605fb336e94403.png'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.lightBlue,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
            SizedBox(width: 60, height: 20),
            Container(
              alignment: Alignment(6.3 * animation.value / 4.5 - 1.5,
                  5 * animation.value / 2 - 1.5),
              child: Column(
                children: [
                  Container(
                      //alignment: Alignment.bottomCenter,

                      width: 100,
                      height: 100,
                      //color: Color.fromRGBO(255, 0, 0, 15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://img.favpng.com/5/25/25/laptop-computer-monitors-computer-icons-clip-art-png-favpng-13fRpYD5fkML9j8GvCrj760jX.jpg'),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.lightBlue,
                        border: Border.all(color: Colors.black),
                      )),
                  Card(
                    color: Colors.amber,
                    elevation: 10.0,
                    child: RichText(
                      text: TextSpan(
                        text: "Master node",
                        style: TextStyle(fontSize: 15 * animation.value),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
              height: 95,
            ),
            Row(
              children: [
                //slave 1
                Container(
                  //alignment: Alignment(
                  //  5 * animation.value / 2 - 0.5, 5 * animation.value / 2 - 1.5),
                  //duration: Duration(seconds: 3),
                  alignment: Alignment(-1 * animation.value, 0),
                  //alignment: Alignment(x, y),
                  child: Column(
                    children: [
                      Container(
                        width: 100 * animation.value,
                        height: 100 * animation.value,
                        //color: Color.fromRGBO(255, 166, 100, animation.value),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://img.favpng.com/3/23/15/laptop-computer-symbol-clip-art-png-favpng-LpBpApQLmMft6icskFtqTnyU2.jpg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.lightBlue,
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Card(
                        color: Colors.amber,
                        elevation: 5.0,
                        child: RichText(
                          text: TextSpan(
                            text: "Slave Node 1",
                            style: TextStyle(fontSize: 15 * animation.value),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 50,
                ),
//slave 2
                Column(
                  children: [
                    Container(
                      //alignment: Alignment(
                      //  5 * animation.value / 2 - 0.5, 5 * animation.value / 2 - 1.5),
                      //duration: Duration(seconds: 3),
                      alignment: Alignment(0, -2 * animation.value),
                      child: Container(
                        width: 100 * animation.value, //* animation.value,
                        height: 100 * animation.value, //* animation.value,
                        //color: Color.fromRGBO(255, 166, 100, animation.value),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://img.favpng.com/3/23/15/laptop-computer-symbol-clip-art-png-favpng-LpBpApQLmMft6icskFtqTnyU2.jpg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.lightBlue,
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.amber,
                      elevation: 10.0,
                      child: RichText(
                        text: TextSpan(
                          text: "Slave Node 2",
                          style: TextStyle(fontSize: 15 * animation.value),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                  height: 100,
                ),

                //slave 3
                Column(
                  children: [
                    Container(
                      //alignment: Alignment(
                      //  5 * animation.value / 2 - 0.5, 5 * animation.value / 2 - 1.5),
                      //duration: Duration(seconds: 3),
                      alignment: Alignment(0, -2 * animation.value),
                      child: Container(
                        width: 100 * animation.value, //* animation.value,
                        height: 100 * animation.value, //* animation.value,
                        //color: Color.fromRGBO(255, 166, 100, animation.value),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://img.favpng.com/3/23/15/laptop-computer-symbol-clip-art-png-favpng-LpBpApQLmMft6icskFtqTnyU2.jpg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.lightBlue,
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.amber,
                      elevation: 10.0,
                      child: RichText(
                        text: TextSpan(
                          text: "Slave Node 3",
                          style: TextStyle(fontSize: 15 * animation.value),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
