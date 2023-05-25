import 'package:flutter/material.dart';

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
          children: [
            // tabbar
            const TabBar(
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
              child: TabBarView(children: [
                PendingRequestScreen(),
                Container(
                  color: Colors.green,
                )
              ]),
            )
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
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 553,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    offset: Offset(0, 4),
                    blurRadius: 6,
                    spreadRadius: 6)
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(10)),
                      Container(
                          height: 120,
                          width: 390,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(children: [
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text("Design Manager"),

                                // buttons
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        padding: const EdgeInsets.only(
                                            left: 25, right: 25),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff6411AD),
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 25),
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
                                    showDialog(
                                        context: context,
                                        builder: (ctx) => Dialog(
                                              alignment: Alignment.bottomCenter,
                                              insetPadding: EdgeInsets.all(0),
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                ),
                                              ),
                                              child: Container(
                                                  height: 250,
                                                  decoration: const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(20),
                                                              topRight: Radius
                                                                  .circular(
                                                                      20)),
                                                      color: Colors.white),

                                                  // first dialog box in text
                                                  child: Column(children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 16,
                                                              left: 30,
                                                              bottom: 16),
                                                      child: Row(children: [
                                                        const CircleAvatar(
                                                          radius: 35,
                                                          backgroundImage:
                                                              NetworkImage(
                                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM9uHvl6bs2Lw8e_0CjOH2lD7RQvEvU6KcOw&usqp=CAU",
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 20),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: const [
                                                              Text(
                                                                "Partha Saradhi",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        25,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            20),
                                                                child: Text(
                                                                  "Designer",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ]),
                                                    ),
                                                    const Divider(
                                                      height: 40,
                                                      color: Colors.green,
                                                      thickness: 1,
                                                      indent: 10,
                                                      endIndent: 10,
                                                    ),
                                                    Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 16,
                                                                  left: 30,
                                                                  bottom: 16),

                                                          // second dailog box in middle
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (ctx) =>
                                                                        Dialog(
                                                                  shape:
                                                                      const RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              20),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              20),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              20),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    height: 200,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                30),
                                                                        color: Colors
                                                                            .white),
                                                                    child: Column(
                                                                        children: [
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: const [
                                                                              Padding(padding: EdgeInsets.only(left: 40, top: 50)),
                                                                              CircleAvatar(
                                                                                radius: 10,
                                                                                backgroundColor: Colors.red,
                                                                              ),
                                                                              Text(
                                                                                " Block Partha Saradhi",
                                                                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const Text(
                                                                            "Are you sure that you want to block\nPartha Saradhi from this group?",
                                                                            style:
                                                                                TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                                                                          ),
                                                                          const SizedBox(
                                                                            height:
                                                                                40,
                                                                          ),
                                                                          // buttons in middle dialog box
                                                                          Row(children: [
                                                                            Padding(padding: EdgeInsets.only(left: 40)),
                                                                            ElevatedButton(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                style: ElevatedButton.styleFrom(
                                                                                  backgroundColor: Color(0xff6411AD),
                                                                                  padding: const EdgeInsets.only(left: 40, right: 40),
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
                                                                                  backgroundColor: Colors.white,
                                                                                  padding: const EdgeInsets.only(left: 25, right: 25),
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(10),
                                                                                  ),
                                                                                ),
                                                                                child: const Text(
                                                                                  "Cancel",
                                                                                  style: TextStyle(fontSize: 18, color: Colors.black),
                                                                                )),
                                                                          ]),
                                                                        ]),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            // text in bottom dialog box
                                                            child: Row(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 35,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .red
                                                                            .shade300,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            20),
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: const [
                                                                        Text(
                                                                          " Block Partha Saradhi",
                                                                          style: TextStyle(
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.bold),
                                                                        ),
                                                                        Text(
                                                                          "Partha saradhi will Block \n from this number",
                                                                          style:
                                                                              TextStyle(fontSize: 18),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ]),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ])),
                                            ));
                                  },
                                  icon: Icon(Icons.more_vert)),
                            ),
                          ])),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
