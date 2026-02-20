import 'package:flutter/material.dart';

void main() {
  runApp(basketBallCounter());
}

class basketBallCounter extends StatefulWidget {
  @override
  State<basketBallCounter> createState() => _basketBallCounterState();
}

class _basketBallCounterState extends State<basketBallCounter> {
  int teamAPoints = 0;
  // عدد نقاط الفريق الاول
  int teamBPoints = 0;
  // عدد نقاط الفريق الثاني
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text('Points Counter'),
          ),

          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Team A', style: TextStyle(fontSize: 20)),
                          Text('$teamAPoints', style: TextStyle(fontSize: 50)),


                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              setState(() {
                                teamAPoints++;
                              });
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),

                          SizedBox(height: 15),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              setState(() {
                                teamAPoints += 2;
                              });
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),

                          SizedBox(height: 15),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              setState(() {
                                teamAPoints += 3;
                              });
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //SizedBox(width: 30),
                    SizedBox(
                      height: 400,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.grey,
                        width: 50,
                      ),
                    ),

                    //SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        
                        children: [
                          Text('Team B', style: TextStyle(fontSize: 20)),

                          Text('$teamBPoints', style: TextStyle(fontSize: 50)),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoints++;
                              });
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),

                          SizedBox(height: 15),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoints += 2;
                              });
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoints += 3;
                              });
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 80),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    iconSize: 10,
                  ),

                  onPressed: () {
                    setState(() {
                      teamAPoints = 0;
                      teamBPoints = 0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 20, color: Colors.black),
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
