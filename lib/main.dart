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
  var _userController = TextEditingController();

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
          Expanded(
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
        ],
      ),
    );
  }
}
