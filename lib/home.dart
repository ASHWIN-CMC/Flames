import 'package:flutter/material.dart';
import 'package:flutter_application_1/list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage("lib/images/zome.jpg"),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Puzzels",
          style: TextStyle(
            color: Colors.pinkAccent,
          ),
        ),
      ),
      body: Column(
        children: [
          // Container(
          //   height: 110,
          //   margin: const EdgeInsets.only(top: 20, left: 10),
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: <Widget>[
          //       // compartment("ashwin", true, "lib/images/zome.jpg"),
          //       // compartment("ashwin", true, "lib/images/zome.jpg"),
          //       // compartment("ashwin", true, "lib/images/zome.jpg"),
          //       // compartment("ashwin", true, "lib/images/zome.jpg"),
          //       // compartment("ashwin", true, "lib/images/zome.jpg"),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 100,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                      image: const DecorationImage(
                        image: AssetImage("lib/images/prf.jpg"),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 100, left: 33),
                      width: 75,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Likes",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
              // SizedBox(
              //   width: 2,
              // ),
              Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 100,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                      image: const DecorationImage(
                        image: AssetImage("lib/images/prf.jpg"),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 100, left: 33),
                      width: 75,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Likes",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.verified,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      )),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 100,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                      image: const DecorationImage(
                        image: AssetImage("lib/images/prf.jpg"),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 100, left: 33),
                      width: 75,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Likes",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.verified,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Search ",
                    ),
                    onChanged: (value) {},
                    onFieldSubmitted: (val) {},
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              height: 250,
              child: ListView(
                children: [
                  ListCard(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.web,
              color: Colors.black,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: Colors.black,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble,
              color: Colors.pinkAccent,
            ),
            label: "Home",
          )
        ],
      ),
    );
  }

  Widget compartment() {
    return Container(
      width: 20,
      height: 30,
      color: Colors.red,
    );
  }
}
