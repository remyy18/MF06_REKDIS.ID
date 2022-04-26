import 'package:flutter/material.dart';
import 'package:rekdis/models/user.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:rekdis/users/signup.dart';

class RekamMedis extends StatefulWidget {
  const RekamMedis({Key? key}) : super(key: key);

  @override
  _RekamMedisState createState() => _RekamMedisState();
}

class _RekamMedisState extends State<RekamMedis> {
  List<User> _users = [
    User(
        'Annisa Azzahra',
        '11041706020001',
        'https://media.istockphoto.com/vectors/female-girl-avatar-vector-id1130899254?s=612x612',
        false),
    User(
        'Ayu Umairrah',
        '11041706020002',
        'https://media.istockphoto.com/vectors/female-girl-avatar-vector-id1130899254?s=612x612',
        false),
    User(
        'Deri Firmansyah',
        '11041706020003',
        'https://media.istockphoto.com/vectors/businessman-icon-vector-id1285207885?s=612x612',
        false),
    User(
        'Riyadh Maulana',
        '11041706020004',
        'https://media.istockphoto.com/vectors/businessman-icon-vector-id1285207885?s=612x612',
        false),
    User(
        'Sabila Sandra',
        '11041706020005',
        'https://media.istockphoto.com/vectors/female-girl-avatar-vector-id1130899254?s=612x612',
        false),
    User(
        'Tasya Kamila',
        '11041706020006',
        'https://media.istockphoto.com/vectors/female-girl-avatar-vector-id1130899254?s=612x612',
        false),
    User(
        'Vira Syahrini',
        '11041706020007',
        'https://media.istockphoto.com/vectors/female-girl-avatar-vector-id1130899254?s=612x612',
        false),
    User(
        'Wiryananta Ukhara',
        '11041706020008',
        'https://media.istockphoto.com/vectors/businessman-icon-vector-id1285207885?s=612x612',
        false),
    User(
        'Yanto Santoso',
        '11041706020009',
        'https://media.istockphoto.com/vectors/businessman-icon-vector-id1285207885?s=612x612',
        false),
    User(
        'Zidan Hariansyah',
        '11041706020010',
        'https://media.istockphoto.com/vectors/businessman-icon-vector-id1285207885?s=612x612',
        false)
  ];

  List<User> _foundedUsers = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      _foundedUsers = _users;
    });
  }

  onSearch(String search) {
    setState(() {
      _foundedUsers = _users
          .where((user) => user.name.toLowerCase().contains(search))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Container(
          height: 38,
          child: TextField(
            onChanged: (value) => onSearch(value),
            decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 175, 175, 175),
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 6, 6, 6),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none),
                hintStyle: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
                hintText: "Cari data pasien"),
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: _foundedUsers.length > 0
            ? ListView.builder(
                itemCount: _foundedUsers.length,
                itemBuilder: (context, index) {
                  return Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.25,
                    child: userComponent(user: _foundedUsers[index]),
                    actions: <Widget>[
                      new IconSlideAction(
                        caption: 'Archive',
                        color: Colors.transparent,
                        icon: Icons.archive,
                        onTap: () => print("archive"),
                      ),
                      new IconSlideAction(
                        caption: 'Share',
                        color: Colors.transparent,
                        icon: Icons.share,
                        onTap: () => print('Share'),
                      ),
                    ],
                    secondaryActions: <Widget>[
                      new IconSlideAction(
                        caption: 'More',
                        color: Colors.transparent,
                        icon: Icons.more_horiz,
                        onTap: () => print('More'),
                      ),
                      new IconSlideAction(
                        caption: 'Delete',
                        color: Colors.transparent,
                        icon: Icons.delete,
                        onTap: () => print('Delete'),
                      ),
                    ],
                  );
                })
            : Center(
                child: Text(
                "No users found",
                style: TextStyle(color: Colors.white),
              )),
      ),
    );
  }

  userComponent({required User user}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
                width: 60,
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(user.image),
                )),
            SizedBox(width: 10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(user.name,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 5,
              ),
              Text(user.username,
                  style: TextStyle(color: Color.fromARGB(255, 123, 123, 123))),
            ])
          ]),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SignUp(),
              ),
            ),
            child: AnimatedContainer(
                height: 35,
                width: 110,
                duration: Duration(milliseconds: 300),
                decoration: BoxDecoration(
                    color: Color(0xffffff),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey.shade700,
                    )),
                child: Center(
                    child: Text('Lihat',
                        style:
                            TextStyle(color: Color.fromARGB(255, 0, 0, 0))))),
          )
        ],
      ),
    );
  }
}
