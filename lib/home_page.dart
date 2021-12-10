import 'package:flutter/material.dart';
import 'package:my_app/chat.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: const Text(
            "WhatsApp",
            style: TextStyle(fontSize: 25),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Colors.white,
            )
          ],
          bottom: TabBar(
            tabs: [
              Icon(Icons.camera_enhance),
              Text('CALL'),
              Text('CHATS'),
              Text('CONTACT'),
            ],
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.white)),
            labelPadding: EdgeInsets.all(10),
          ),
        ),
        body: SafeArea(
            child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text('Person $index'),
              subtitle: Text('Hey How Are You?'),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage:
                    NetworkImage('https://i.stack.imgur.com/l60Hf.png'),
              ),
              trailing: Text('$index:00PM'),
              onTap:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                  return ChatPage (name:'Person $index');
                }));
              }
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: 20,
        )),
      ),
    );
  }
}
