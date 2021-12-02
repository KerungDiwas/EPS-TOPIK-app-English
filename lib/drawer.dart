import 'package:flutter/material.dart';

class Drawer2 extends StatelessWidget {
  const Drawer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/icon/korea.jpg')),
            color: Colors.red,
          ),
          child: Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                '',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )),
        ),
        ListTile(
          title: const Text('EPS Topik Book [Laos]'),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => const AlertDialog(
              title: Text('Message'),
              content: Text('This app is coming soon in playstore.'),
            ),
          ),
        ),
        ListTile(
          title: const Text('EPS Topik Book [Myanmar]'),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => const AlertDialog(
              title: Text('Message'),
              content: Text('This app is coming soon in playstore.'),
            ),
          ),
        ),
        ListTile(
          title: const Text('EPS Topik Book [Sri Lanka]'),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => const AlertDialog(
              title: Text('Message'),
              content: Text('This app is coming soon in playstore.'),
            ),
          ),
        ),
        ListTile(
          title: const Text('EPS Topik Book [Uzbekistan]'),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => const AlertDialog(
              title: Text('Message'),
              content: Text('This app is coming soon in playstore.'),
            ),
          ),
        ),
        ListTile(
          title: const Text('EPS Topik Book [Vietnam]'),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => const AlertDialog(
              title: Text('Message'),
              content: Text('This app is coming soon in playstore.'),
            ),
          ),
        ),
        ListTile(
          title: const Text('About'),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => const AlertDialog(
              title: Text('About'),
              content: Text(
                  'This app is created as a reference book for those who are preparing for EPS-TOPIK exam.'),
            ),
          ),
        ),
      ],
    );
  }
}
