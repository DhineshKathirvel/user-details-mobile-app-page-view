import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: UserId())
    );

class UserId extends StatefulWidget {
  const UserId({Key? key}) : super(key: key);

  @override
  _UserIdState createState() => _UserIdState();
}

class _UserIdState extends State<UserId> {
  int experience=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text("User Profile"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            setState(() {
              experience +=1;
            });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage("assets/images/Dhinesh-1.jpeg"),
              ),
            ),
            Divider(height: 40.0,
            color: Colors.grey[600],
            ),
            Text("NAME",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
            ),
            Text("Dhinesh Kathirvel",
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0
                ),
            ),
            SizedBox(height: 10.0),
            Text("COMPANY",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text("HCL Technologies",
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0
              ),
            ),
            SizedBox(height: 10.0),
            Text("TITLE",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text("Solution Architect",
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0
              ),
            ),
            SizedBox(height: 10.0),
            Text("Experience",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text('$experience',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width:10.0),
                Text("dhineshkumar.kathirvel@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 14.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

