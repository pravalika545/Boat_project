import 'package:flutter/material.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({super.key});

  @override
  State<MembersPage> createState() => _MembersState();
}

class _MembersState extends State<MembersPage> {
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
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      height: 80,
                      width: 383,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(children: [
                        const Padding(padding: EdgeInsets.all(10)),
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLzjys3KIhHclOOF8AsP-FQYswjBO_4AGYvw&usqp=CAU",
                          ),
                        ),
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 15, right: 100),
                              child: Text(
                                "Task Name",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 3),
                              child: Text(
                                "assigned by Partha Saradhi",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ]);
                }),),
      ]),
    ]);
  }
}
