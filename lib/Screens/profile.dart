import 'package:admin/screens/activity.dart';
import 'package:admin/shared/const.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  dynamic Balance = 0;

  bool verified = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF9EB),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 2,
                ),
                height: 375,
                width: double.infinity,
                decoration: darkCont,
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Align(
                          alignment: Alignment(-1, 0),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 24,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 22,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Abdulaziz alshiha',
                          style: TextStyle(
                              color: Color(0xFFFEF9EB),
                              fontSize: 18,
                              letterSpacing: 0.75,
                              fontWeight: FontWeight.w500),
                        ),
                        verified == false ? Text('') :
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.done,color: Color(0xff222B44),size: 16)
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    //bio
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      height: 110,
                      width: 310,
                      decoration: smallbox,
                      child: Text(
                        'It is a long established fact that a reader will be distracted'
                        ' by the readable content of a page when looking at its layout.'
                        ' The point of using Lorem Ipsum is that it has a more-or-less normal'
                        ' distribution of letters',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.25,
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    //three boxes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 6),
                            height: 80,
                            width: 90,
                            decoration: smallbox,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment(0, -0.25),
                                  child: Text('7',
                                      style: TextStyle(
                                          color: Color(0xFFFEF9EB),
                                          fontSize: 24,
                                          letterSpacing: 0.75,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Activities',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        letterSpacing: 0.75,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            )
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 6),
                            height: 80,
                            width: 90,
                            decoration: smallbox,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('+153',
                                    style: TextStyle(
                                        color: Color(0xFFFEF9EB),
                                        fontSize: 21,
                                        letterSpacing: 0.75,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Balance',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        letterSpacing: 0.75,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 6),
                            height: 80,
                            width: 90,
                            decoration: smallbox,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment(0, -0.25),
                                  child: Text('6',
                                      style: TextStyle(
                                          color: Color(0xFFFEF9EB),
                                          fontSize: 24,
                                          letterSpacing: 0.75,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Requests',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        letterSpacing: 0.75,
                                        fontWeight: FontWeight.bold)
                                ),
                                SizedBox(height: 5),
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              //email, verified,

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(9.0),
                            topRight: Radius.circular(9.0),
                            bottomLeft: Radius.circular(9.0),
                            bottomRight: Radius.circular(9.0),
                          )),
                      child: Icon(
                        Icons.alternate_email,
                        color: Color(0xff222B44),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Text(
                      'Email:',
                      style: TextStyle(
                        color: Color(0xff222B44),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(width: 12,),
                    Text(
                      'abdulaziz@gmail.com',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(9.0),
                            topRight: Radius.circular(9.0),
                            bottomLeft: Radius.circular(9.0),
                            bottomRight: Radius.circular(9.0),
                          )),
                      child: Icon(
                        Icons.done,
                        color: Color(0xff222B44),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Text(
                      'Verify this account',
                      style: TextStyle(
                          color: Color(0xff222B44),
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(width: 100,),
                    Switch(
                      value: verified,
                      onChanged: (value) {
                        setState(() {
                          verified = value;
                        });
                      },
                      activeTrackColor: Colors.green,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60,),
              verified == false ? Text('') :
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {},
                child: Text("Save",
                    style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 2.2,
                        color: Colors.black)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
