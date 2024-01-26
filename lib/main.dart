import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Future<void> goToWebPage(String urlString) async {
    final Uri _url = Uri.parse(urlString);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView (
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 80, left: 10),
            child: Column(
              children: <Widget>[
                const Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50, backgroundImage: AssetImage("images/ravi.jpg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Mr. Ravi Gautam",
                          style: TextStyle(fontSize: 30,color: Colors.white, fontFamily: "Roboto"),
                        ),
                        Text(
                          "Software Engineering",
                          style: TextStyle(fontSize: 20,color: Colors.white, fontFamily: "Roboto"),
                        )
                      ],
                    ),
                    Column()
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.school,

                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "B.C.A",
                            style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: "Roboto"),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.computer_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Full Stack Developer",
                            style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: "Roboto"),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_pin,color: Colors.white,size: 40,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "U P India",
                            style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: "Roboto"),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.email,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "raviup198@gmail.com",
                            style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: "Roboto"),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "+91 7521878485",
                            style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: "Roboto"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                Padding(
                  padding: EdgeInsets.only(left: 30,),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          InkWell(
                            child: IconButton(onPressed: ()
                            {
                              goToWebPage("https://www.linkedin.com/in/ravi-shankar-gautam-aa5492248/");
                            },
                              icon: CircleAvatar(
                                radius: 20, backgroundImage: AssetImage("images/linkedin.png"),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          InkWell(
                            child: IconButton(onPressed: (){
                              goToWebPage("https://www.instagram.com/ravi_up01?igsh=MzRlODBiNWFlZA%3D%3D");
                            },
                              icon: CircleAvatar(
                                radius: 20, backgroundImage: AssetImage("images/insta.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          //
                          InkWell(
                            child: IconButton(onPressed: (){
                              goToWebPage("https://www.facebook.com/profile.php?id=100015390817696");
                            },
                              icon: CircleAvatar(
                                radius: 20, backgroundImage: AssetImage("images/Facebook.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          //
                          InkWell(
                            child: IconButton(onPressed: (){
                              goToWebPage("https://github.com/RSJK2562");
                            },
                              icon: CircleAvatar(
                                radius: 20, backgroundImage: AssetImage("images/GitHub.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          InkWell(
                            child: IconButton(onPressed: (){
                              goToWebPage("https://x.com/rs_ravi01?t=k-P3o76jCo1CnurbscgKvA&s=08");
                            },
                              icon: CircleAvatar(
                                radius: 20, backgroundImage: AssetImage("images/tw.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("I'm a Software Engineering",style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: "Roboto"),),
                ),
                Text("Created By Me",style: TextStyle(color: Colors.white, fontFamily: "Roboto"),),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
