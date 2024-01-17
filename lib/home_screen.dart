import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: Text('WhatsApp'),
              bottom: const TabBar(
                tabs: [
                  Tab(child: Icon(Icons.camera_alt_outlined)),
                  Tab(text: 'Chats'),
                  Tab(text: 'Status'),
                  Tab(text: 'Calls'),
                ],
              ),
              actions: [
                Icon(Icons.search),
                SizedBox(width: 10,),
                PopupMenuButton(
                    icon: Icon(Icons.more_vert_outlined),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                          value: '1',
                          child: Text('New Group')
                      ),
                      PopupMenuItem(
                          value: '2',
                          child: Text('Setting')
                      ),
                      PopupMenuItem(
                          value: '3',
                          child: Text('Log Out')
                      ),
                    ]
                ),
                SizedBox(width: 20,)
              ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://avatarfiles.alphacoders.com/336/336452.jpg'),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text('Where is my Dog?'),
                      trailing: Text('Just Now'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 22,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://sp-ao.shortpixel.ai/client/to_auto,q_lossy,ret_img/https://my.kumonglobal.com/wp-content/uploads/2022/03/Learn-from-Rowan-Atkinson_Kumon-Malaysia_530x530_NewsThumbnail.jpg'),
                        ),
                      ),
                      title: Text('Mr Bean'),
                      subtitle: Text('22 min ago'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://avatarfiles.alphacoders.com/336/336452.jpg'),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text('you missed call', style: TextStyle(color: Colors.red),),
                      trailing: Icon(Icons.phone, color: Colors.red,),
                    );
                  }
              ),
            ],
          ),
        )
    );
  }
}
