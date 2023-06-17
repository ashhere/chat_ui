import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333230),
      appBar: AppBar(
        backgroundColor: const Color(0xff333230),
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(Icons.menu),
        // ),
        actions: [IconButton(onPressed: () {HapticFeedback.lightImpact();}, icon: const Icon(Icons.search))],
      ),
      body: Column(children: [
        SizedBox(
          height: 70,
          child: ListView(
              padding: const EdgeInsets.only(left: 20, top: 10),
              scrollDirection: Axis.horizontal,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Messages",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    )),
                const SizedBox(
                  width: 40,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text("Online",
                        style: TextStyle(fontSize: 23, color: Colors.grey))),
                const SizedBox(
                  width: 40,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text("Groups",
                        style: TextStyle(fontSize: 23, color: Colors.grey))),
                const SizedBox(
                  width: 40,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text("More",
                        style: TextStyle(fontSize: 23, color: Colors.grey)))
              ]),
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                height: 800,
                width: 400,
                decoration: BoxDecoration(
                    color: const Color(0xff27c1a9),
                    borderRadius: BorderRadius.circular(40)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Favorite contacts',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildContactAvatar('Alla', 'img1.jpeg'),
                          buildContactAvatar('July', 'img2.jpeg'),
                          buildContactAvatar('Mikle', 'img3.jpeg'),
                          buildContactAvatar('Kler', 'img4.jpg'),
                          buildContactAvatar('Moane', 'img5.jpeg'),
                          buildContactAvatar('Julie', 'img6.jpeg'),
                          buildContactAvatar('Allen', 'img7.jpeg'),
                          buildContactAvatar('John', 'img8.jpg'),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
              Positioned(
                top: 175,
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffeffffc),
                      borderRadius: BorderRadius.circular(40)),
                  child: ListView(children: const [
                    BuildContactText(
                        name: 'July',
                        message: 'How are you?',
                        time: '3:30 pm',
                        image: 'img2.jpeg'),
                    Divider(),
                    BuildContactText(
                        name: 'Alla',
                        message: 'Where are you from?',
                        time: '9:33 am',
                        image: 'img1.jpeg'),
                    Divider(),
                    BuildContactText(
                        name: 'Moane',
                        message: 'What do you do?',
                        time: '7:20 am',
                        image: 'img4.jpg'),
                    Divider(),
                    BuildContactText(
                        name: 'Kler',
                        message: 'You look good',
                        time: '7:10 am',
                        image: 'img4.jpg'),
                    Divider(),
                    BuildContactText(
                        name: 'Mikle',
                        message: 'I am Moane',
                        time: '6:00 am',
                        image: 'img3.jpeg'),
                    Divider(),
                    BuildContactText(
                        name: 'Julie',
                        message: 'Where you live?',
                        time: '5:30am',
                        image: 'img6.jpeg'),
                    Divider(),
                    BuildContactText(
                        name: 'Alem',
                        message: 'Whats your name?',
                        time: '4:30am',
                        image: 'img7.jpeg'),
                    Divider(),
                    BuildContactText(
                        name: 'Jhon',
                        message: 'How are you',
                        time: '3:30am',
                        image: 'img8.jpg'),
                    Divider(),
                  ]),
                ),
              ),
            ],
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () { HapticFeedback.lightImpact();},
        backgroundColor: const Color(0xff27c1a9),
        child: const Icon(Icons.chat),
      ),
      drawer: const SafeArea(
          child: Drawer(
            
        backgroundColor: Color(0xff333230),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(40))),
        // shadowColor: Colors.black,
        width: 250,
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 10,bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        )),
                    Text("Tom Brenan",style: TextStyle(fontSize: 18,color: Colors.white),)
                  ],
                ),
                SizedBox(
                      height: 40,
                    ),
                  Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ), Row(
                  children: [
                    Icon(
                      Icons.notifications_active,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ), Row(
                  children: [
                    Icon(
                      Icons.chat_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Chats",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ), Row(
                  children: [
                    Icon(
                      Icons.storage,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Data and Storage",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ), Row(
                  children: [
                    Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Help",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15,left: 5),
                  child: Divider(thickness: 1.5,color: Color(0xff27C1A7),),
                ),SizedBox(
                  height: 20,
                ),Row(
                  children: [
                    Icon(
                      Icons.group,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Invite a friend",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),
                    ),
                  ],
                ),
              ]),
              Row( children: [
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "LOGOUT",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),
                    ),
                  ],

              ),
            ],
          ),
        ),
      )),
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvatar(filename: filename),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class BuildContactText extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String image;
  const BuildContactText({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(message),
      trailing: Text(time),
      leading: UserAvatar(filename: image),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 29,
          backgroundImage: AssetImage('images/$filename'),
        ));
  }
}
