import 'package:flutter/material.dart';

void main() {
  runApp(SimplePointsCounter());
}

class SimplePointsCounter extends StatefulWidget {
  @override
  State<SimplePointsCounter> createState() => _SimplePointsCounterState();
}

class _SimplePointsCounterState extends State<SimplePointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  Widget buildUI(String teamName, int points, Function(int) onAdd) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(teamName, style: TextStyle(fontSize: 20)),
          Text('$points', style: TextStyle(fontSize: 50)),

          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            onPressed: () => onAdd(1),
            child: Text(
              'Add 1 Point',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),

          SizedBox(height: 15),

          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            onPressed: () => onAdd(2),
            child: Text(
              'Add 2 Points',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),

          SizedBox(height: 15),

          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            onPressed: () => onAdd(3),
            child: Text(
              'Add 3 Point',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text('Points Counter'),
          ),

          body: Column(
            children: [
              Row(
                children: [
                  buildUI(
                    'Team A',
                    teamAPoints,
                    (value) => setState(() => teamAPoints += value),
                  ),

                  SizedBox(
                    height: 400,
                    child: VerticalDivider(thickness: 1, color: Colors.grey),
                  ),

                  buildUI(
                    'Team B',
                    teamBPoints,
                    (value) => setState(() => teamBPoints += value),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: (){
                  setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

