import 'package:charitech/models/organization_model.dart';
import 'package:charitech/services/charitech_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    late List<Organization> organizations = [];
    @override
    void initState() {
      super.initState();
    }

    setState(() {});

    _getOrganizations() async {
      List<Organization> organizations =
          await CHARITECAPIService.instance.fetchOrganizations();
    }

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello,', style: TextStyle(fontSize: 15)),
            SizedBox(
              height: 2.0,
            ),
            Text(
              'Moses Zengo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              )),
        ],
      ),
      body: ListView.builder(
        itemCount: organizations.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${organizations[index]}'),
          );
        },
      ),
    );
  }
}
