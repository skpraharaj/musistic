import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0.0),
            backgroundColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
          ),
          onPressed: () {},
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/icons/menus.svg',
                fit: BoxFit.cover,
                height: 12.0,
                width: 23.37,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0.0),
              backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).primaryColor),
            ),
            onPressed: () {},
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/redlike.svg',
                  fit: BoxFit.cover,
                  height: 20,
                  width: 20,
                  // color: Colors.red,
                ),
              ],
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            const Text('No Songs'),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 18.5,
                  right: 17.5,
                  top: 8,
                  bottom: 9,
                ),
                child: Text(
                  'Scan Device',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 32.5, right: 31.5, top: 8, bottom: 9),
                    child: Text(
                      'Songs',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 29.5, right: 27.5, top: 8, bottom: 9),
                    child: Text(
                      'Albums',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 24.5, right: 19.5, top: 8, bottom: 9),
                    child: Text(
                      'Playlists',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30.0),
                    Text(
                      '------',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    const SizedBox(height: 30.0),
                    Text(
                      '---',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/previousSongButton.svg',
                          fit: BoxFit.cover,
                          height: 17,
                          width: 21.5,
                        ),
                        Text(
                          '-5s',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset(
                          'assets/icons/playButton.svg',
                          fit: BoxFit.cover,
                          height: 54,
                          width: 54,
                        ),
                        Text(
                          '+5s',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset(
                          'assets/icons/nextSongButton.svg',
                          fit: BoxFit.cover,
                          height: 17.0,
                          width: 21.5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
