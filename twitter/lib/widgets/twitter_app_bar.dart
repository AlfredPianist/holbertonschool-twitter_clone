import 'package:flutter/material.dart';

class TwitterAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const TwitterAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 40),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
                  radius: 25.0,
                ),
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.black, fontSize: 35),
              ),
            ],
          ),
          const Icon(
            Icons.settings,
            color: Colors.blue,
            size: 50,
          )
        ],
      ),
      iconTheme: const IconThemeData(color: Colors.blue),
    );
  }
}
