import 'package:flutter/material.dart';
import 'package:new_project_flutter/members_page.dart';

class ImagesPage extends StatefulWidget {
  const ImagesPage({super.key});
  @override
  State<ImagesPage> createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // appbar
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
          ),
          title: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM9uHvl6bs2Lw8e_0CjOH2lD7RQvEvU6KcOw&usqp=CAU"),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 180, top: 15),
              child: Text(
                "Boat Name",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xff1F1932),
        // body page
        body: Column(
          children: const [
            // tabbar
            TabBar(
              indicatorColor: Colors.orange,
              isScrollable: true,
              tabs: [
                Tab(
                    child: Text(
                  'Pending Request ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
                Tab(
                    child: Text(
                  'Members',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ],
            ),
            // next page to tabbar
            Expanded(
              child: TabBarView(
                children: [
                  PendingRequestScreen(),
                  MembersPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PendingRequestScreen extends StatelessWidget {
  const PendingRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(children: [
        Container(
          height: 800,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: ListView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return Column(children: [
                const Padding(padding: EdgeInsets.all(10)),
                Container(
                  height: 120,
                  width: 383,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      const Padding(padding: EdgeInsets.all(10)),
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM9uHvl6bs2Lw8e_0CjOH2lD7RQvEvU6KcOw&usqp=CAU",
                        ),
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              "Partha Saradhi",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text("Design Manager"),

                          // buttons
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  showAcceptDialog(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  "Accept",
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                        ],
                      ),
                      // buttons
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: ElevatedButton(
                            onPressed: () {
                              showRejectDialog(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff6411AD),
                              padding:
                                  const EdgeInsets.only(left: 25, right: 25),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              "Reject",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                      // icon button using dialog box in bootom
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100),
                        child: IconButton(
                          onPressed: () {
                            showBlockDialog(context);
                          },
                          icon: const Icon(Icons.more_vert),
                        ),
                      ),
                    ],
                  ),
                ),
              ]);
            },
          ),
        ),
      ]),
    ]);
  }
}

showGestureDetector(BuildContext context) {
  showDialog(
    context: context,
    builder: (ctx) => Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(padding: EdgeInsets.only(left: 40, bottom: 65)),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red,
              ),
              Text(
                " Block Partha Saradhi",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),

          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Are you sure that you want to block Partha Saradhi from this group?",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // buttons in middle dialog box
          Row(children: [
            const Padding(padding: EdgeInsets.only(left: 20)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff6411AD),
                  padding: const EdgeInsets.only(left: 35, right: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Block",
                  style: TextStyle(fontSize: 18),
                )),
            const SizedBox(
              width: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white54,
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                )),
          ]),
        ]),
      ),
    ),
  );
}

showBlockDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx) => Dialog(
          alignment: Alignment.bottomCenter,
          insetPadding: EdgeInsets.all(0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Container(
              height: 200,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white),

              // first dialog box in text
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 30, bottom: 16),
                  child: Row(children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM9uHvl6bs2Lw8e_0CjOH2lD7RQvEvU6KcOw&usqp=CAU",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Partha Saradhi",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Designer",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                const Divider(
                  height: 2,
                  color: Colors.green,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Column(children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, left: 30, bottom: 16),
                    // second dailog box in middle
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        showGestureDetector(context);
                      },
                      // text in bottom dialog box
                      child: Row(children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.red.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                " Block Partha Saradhi",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Partha saradhi will Block from this number",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ])
              ]))));
}

showAcceptDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx) => Dialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20)),
          ),
          child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 40, bottom: 65)),
                    CircleAvatar(
                      child: Icon(
                        Icons.person_add_alt_1_sharp,
                        size: 20,
                        color: Colors.white,
                      ),
                      radius: 15,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      " Accept Partha Saradhi",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Are you sure that you want to block Partha Saradhi from this group?",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff6411AD),
                        padding: const EdgeInsets.only(left: 35, right: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Accept",
                        style: TextStyle(fontSize: 18),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        padding: const EdgeInsets.only(left: 35, right: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )),
                ])
              ]))));
}

showRejectDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx) => Dialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20)),
          ),
          child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 40, bottom: 65)),
                    CircleAvatar(
                      child: Icon(
                        Icons.cancel,
                        size: 15,
                        color: Colors.white,
                      ),
                      radius: 10,
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      " Reject Partha Saradhi",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Are you sure that you want to block Partha Saradhi from this group?",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff6411AD),
                        padding: const EdgeInsets.only(left: 35, right: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Reject",
                        style: TextStyle(fontSize: 18),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        padding: const EdgeInsets.only(left: 35, right: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )),
                ])
              ]))));
}
