import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Member Management',
      home: MemberList(),
    );
  }
}

class MemberList extends StatefulWidget {
  @override
  _MemberListState createState() => _MemberListState();
}

class _MemberListState extends State<MemberList> {
  final List<String> members = [];
  final _userController = TextEditingController();
  List<String> groupOne = [];
  List<String> groupTwo = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Member Management'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 16), // 空のウィジェットで余白を作成
          TextField(
            controller: _userController,
            decoration: InputDecoration(
              labelText: 'Enter a member name',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final memberName = _userController.text; // 追加するメンバーの名前を入力する
              _userController.clear();
              setState(() {
                members.add(memberName);
                print(members.length);
              });
            },
            child: Text('Add Member'),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: members.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(members[index]),
                    trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            members.removeAt(index);
                          });
                        }));
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  var sortMembers = List.of(members);
                  sortMembers.shuffle();
                  groupOne =
                      sortMembers.getRange(0, sortMembers.length ~/ 2).toList();
                  groupTwo = sortMembers
                      .getRange(sortMembers.length ~/ 2, sortMembers.length)
                      .toList();
                  debugPrint(sortMembers.join(","));
                  debugPrint(groupOne.join(","));
                  debugPrint(groupTwo.join(","));
                });
              },
              child: Text(
                "2グループに分ける",
              )),
          SizedBox(height: 16),
          Row(
            children: <Widget>[
              Expanded(
                flex: 5, // 割合.
                child: Container(
                  height: 200,
                  color: Colors.red,
                  child: ListView.builder(
                    itemCount: groupOne.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(groupOne[index]),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 5, // 割合.
                child: Container(
                  color: Colors.blue,
                  height: 200,
                  child: ListView.builder(
                    itemCount: groupTwo.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(groupTwo[index]),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
