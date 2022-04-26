import 'package:flutter/material.dart';
import 'package:rekdis/users/login.dart';

class AkunPage extends StatelessWidget {
  const AkunPage({Key? key, String? title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Image(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              image: const NetworkImage(
                  'https://images.unsplash.com/photo-1485160497022-3e09382fb310?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&w=1000&q=80'),
            ),
            const Positioned(
                bottom: -50.0,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1561742026-e99d88acc2e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                  ),
                ))
          ]),
      SizedBox(
        height: 45,
      ),
      ListTile(
        title: Center(child: Text('Dewi Ayu Amd.Kes')),
        subtitle: Center(child: Text('Bidan')),
      ),
      ListTile(
        title: Text('Jobdesk'),
        subtitle: Text('Bagian Rekam Medis dan Registrasi Pasien'),
      ),
      SizedBox(
        height: 1,
      ),
      ListTile(
        title: Text('Lokasi'),
        subtitle: Text('Puskesmas Harapan, Bebesen, Takengon'),
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            ),
            child: const Text('Setting'),
            style: TextButton.styleFrom(
              primary: Color.fromARGB(255, 0, 0, 0),
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 10.0,
              ),
              shape: const StadiumBorder(),
              side: const BorderSide(width: 2.0),
            ),
          ),
          const SizedBox(
            width: 3.0,
          ),
        ],
      ),
    ]));
  }
}
