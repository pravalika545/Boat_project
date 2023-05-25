import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            children: [
              Stack(
                children: [
                  // top container
                  Container(
                    height: MediaQuery.of(context).size.height * .3,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Row(
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 80, right: 50, left: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.black,
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15.0),
                                hintText: "Search Campaign",
                                hintStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFFB3B1B1),
                                ),
                                prefixIcon: const Icon(
                                  Icons.search,
                                  size: 26,
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFFF0000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 80, right: 10),
                          child: CircleAvatar(
                            radius: 25,
                            // ignore: sort_child_properties_last
                            child: Icon(
                              Icons.notification_add_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // container top center
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(top: 140),
                          child: Center(
                            child: Text(
                              "You can donation for other people    >",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19),
                            ),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height / 3.8,
                        width: MediaQuery.of(context).size.width * .9,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  // container inside text
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .2,
                        width: MediaQuery.of(context).size.width * .9,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Your Donation Pocket ",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text(
                              "\$365,500",
                              style: TextStyle(
                                  fontSize: 45,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 30,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Top Up",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 30,
              ),
              // text part
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Discover Campaign",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "View all",
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ),
                ],
              ),
              //  images in container
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlIYrbjrVZvb2xaHBNcBsLFnYnhJTbaMvl_A&usqp=CAU"),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 80, left: 10),
                        child: Text(
                          "Education",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ8FkT7TPhviCBnprS0XjP59kMQ7PgGUsOWQ&usqp=CAU"),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 80, left: 40),
                        child: Text(
                          "Fundraising",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrR0tKW9CT_TKH3_ML6FsVYstquOfJzWd6gw&usqp=CAU"),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 80, left: 40),
                        child: Text(
                          "Disasters",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZBFB4uZV2wKN-AIx5hJe1bx51PrbagkuVDw&usqp=CAU"),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 80, left: 40),
                        child: Text(
                          "Health",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrYx6x-1D70FQzrBwSm9jhYNz7ACW50GSXDQ&usqp=CAU"),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 80, left: 40),
                        child: Text(
                          "school",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // text page
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Urgent Fundraising",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "View all",
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ),
                ],
              ),
              // container images in button
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset: Offset(0, 4),
                                  blurRadius: 6,
                                  spreadRadius: 6)
                            ]),
                        alignment: Alignment.topCenter,
                        child: Column(children: [
                          Container(
                            height: 150,
                            width: 290,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKXYSs2F_0O04sLv8AjIH43Owr2rEIfkFEOA&usqp=CAU",
                                ),
                                alignment: Alignment.topCenter,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 150, top: 10),
                            child: Row(children: const [
                              Text('By'),
                              SizedBox(
                                width: 3,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.red,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Aman Pal",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            " Urgent! Help The Construction \n Mosque Of The Jember",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Container(
                              height: 10,
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 80),
                                child: Text(
                                  "\$ 23,400",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                              Text(
                                "31 days left",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.only(left: 80, right: 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text(
                                "Donation",
                                style: TextStyle(fontSize: 18),
                              ))
                        ]),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset: Offset(0, 4),
                                  blurRadius: 6,
                                  spreadRadius: 6)
                            ]),
                        alignment: Alignment.topCenter,
                        child: Column(children: [
                          Container(
                            height: 150,
                            width: 290,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuDFjsGAnpnQXbUqkXJqFbVVov6waK3UDYFA&usqp=CAU",
                                ),
                                alignment: Alignment.topCenter,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 150, top: 10),
                            child: Row(children: const [
                              Text('By'),
                              SizedBox(
                                width: 3,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.purpleAccent,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "John",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Help Construction from the \n Mosque Of The Rojcg",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 200),
                            child: Container(
                              height: 10,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 80),
                                child: Text(
                                  "\$ 2,900",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                              Text(
                                "67 days left",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.only(left: 80, right: 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text(
                                "Donation",
                                style: TextStyle(fontSize: 18),
                              ))
                        ]),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset: Offset(0, 4),
                                  blurRadius: 6,
                                  spreadRadius: 6)
                            ]),
                        alignment: Alignment.topCenter,
                        child: Column(children: [
                          Container(
                            height: 150,
                            width: 290,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKXYSs2F_0O04sLv8AjIH43Owr2rEIfkFEOA&usqp=CAU",
                                ),
                                alignment: Alignment.topCenter,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 150, top: 10),
                            child: Row(children: const [
                              Text('By'),
                              SizedBox(
                                width: 3,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.greenAccent,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Raj Pal",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            " The Construction of the john \n Mosque Of The Jember",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Container(
                              height: 10,
                              width: 210,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 80),
                                child: Text(
                                  "\$ 49,100",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                              Text(
                                "19 days left",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.only(left: 80, right: 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text(
                                "Donation",
                                style: TextStyle(fontSize: 18),
                              ))
                        ]),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        height: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset: Offset(0, 4),
                                  blurRadius: 6,
                                  spreadRadius: 6)
                            ]),
                        alignment: Alignment.topCenter,
                        child: Column(children: [
                          Container(
                            height: 150,
                            width: 290,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTd1CTd7pDYXAf4JZiesachQ3N_sxnBhdkgI3kQ38ZGTPbkrx6zI4JEGZd1soKsjYhBKs&usqp=CAU",
                                ),
                                alignment: Alignment.topCenter,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 150, top: 10),
                            child: Row(children: const [
                              Text('By'),
                              SizedBox(
                                width: 3,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.pink,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "James",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Construction the data in the \n Mosque Of The Rojcpg",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 10,
                            width: 270,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 80),
                                child: Text(
                                  "\$ 12,200",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                              Text(
                                "51 days left",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.only(left: 80, right: 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text(
                                "Donation",
                                style: TextStyle(fontSize: 18),
                              ))
                        ]),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset: Offset(0, 4),
                                  blurRadius: 6,
                                  spreadRadius: 6)
                            ]),
                        alignment: Alignment.topCenter,
                        child: Column(children: [
                          Container(
                            height: 150,
                            width: 290,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfoTCLJk_WCjGV4P3x9Qk7BcrryWLlRG17Pw&usqp=CAU",
                                ),
                                alignment: Alignment.topCenter,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 150, top: 10),
                            child: Row(children: const [
                              Text('By'),
                              SizedBox(
                                width: 3,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.red,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Joman Rule",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            " Help The Construction from \n Mosque Of The Jember",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 10,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 80),
                                child: Text(
                                  "\$ 3,400",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                              Text(
                                "91 days left",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.only(left: 80, right: 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text(
                                "Donation",
                                style: TextStyle(fontSize: 18),
                              ))
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
        // bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: "Email"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ]));
  }
}
