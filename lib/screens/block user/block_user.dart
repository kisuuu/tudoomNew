import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class BlockUserScreen extends StatefulWidget {
  const BlockUserScreen({Key? key}) : super(key: key);

  @override
  State<BlockUserScreen> createState() => _BlockUserScreenState();
}

class _BlockUserScreenState extends State<BlockUserScreen> {
  List<BlockUser> blockUser = [
    BlockUser(
      name: 'Angela yu',
      username: 'factt.u',
      image: 'assets/images/participian01.jpg',
    ),
    BlockUser(
      name: 'Ishh',
      username: 'ishikapandeyy_',
      image: 'assets/images/participian02.jpg',
    ),
    BlockUser(
      name: 'saksh!!',
      username: 'saakshiii.3',
      image: 'assets/images/participian03.jpg',
    ),
    BlockUser(
      name: 'Monisha mohan menon',
      username: 'Monisha.mohan.menon',
      image: 'assets/images/participian04.jpg',
    ),
    BlockUser(
      name: 'Anisha',
      username: 'aaaniiissshhhaaa',
      image: 'assets/images/participian05.jpg',
    ),
    BlockUser(
      name: 'Anushaya Singh_',
      username: 'anushayaaa_',
      image: 'assets/images/participian06.jpg',
    ),
    BlockUser(
      name: 'pooja kothari',
      username: 'pooja_kothari',
      image: 'assets/images/participian07.jpg',
    ),
  ];

  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(color: white),
        centerTitle: true,
        backgroundColor: purple,
        title: Text(
          'Block user',
          style: GoogleFonts.poppins(
            color: white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        color: purple,
        child: Container(
          decoration: const BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                15,
              ),
              topRight: Radius.circular(
                15,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 20,
            ),
            child: ListView.builder(
              itemCount: blockUser.length,
              itemBuilder: (context, index) {
                final user = blockUser[index];
                return Card(
                  child: ListTile(
                      leading: CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(user.image),
                      ),
                      title: Text(user.name),
                      subtitle: Text(user.username),
                      trailing: Checkbox(
                          shape: const CircleBorder(),
                          checkColor: purple,
                          activeColor: purple,
                          value: user.value,
                          onChanged: (value) {
                            setState(() {
                              final newValue = user.value;
                              user.value = value!;
                            });
                          })),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class BlockUser {
  final String name;
  final String username;
  final String image;
  bool value;

  BlockUser({
    required this.name,
    required this.username,
    this.value = false,
    required this.image,
  });
}
