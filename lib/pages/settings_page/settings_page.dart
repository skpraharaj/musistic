import 'package:flutter/material.dart';
import 'package:musistic/pages/settings_page/constants/options.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    int _selectedOption = 0;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Menu Options'),
        // leading: FlatButton(
        //   textColor: Colors.white,
        //   child: Icon(
        //     Icons.arrow_back,
        //   ),
        //   onPressed: () => print('Back'),
        // ),
        actions: const [
          // FlatButton(
          //   textColor: Colors.white,
          //   child: Text(
          //     'HELP',
          //     style: TextStyle(
          //       fontSize: 16.0,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          //   onPressed: () => print('HELP'),
          // )
        ],
      ),
      body: ListView.builder(
        itemCount: options.length + 2,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return const SizedBox(height: 15.0);
          } else if (index == options.length + 1) {
            return const SizedBox(height: 100.0);
          }
          return Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10.0),
            width: double.infinity,
            height: 80.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: _selectedOption == index - 1
                  ? Border.all(color: Colors.black26)
                  : null,
            ),
            child: ListTile(
              leading: options[index - 1].icon,
              title: Text(
                options[index - 1].title,
                style: TextStyle(
                  color: _selectedOption == index - 1
                      ? Colors.black
                      : Colors.grey[600],
                ),
              ),
              subtitle: Text(
                options[index - 1].subtitle,
                style: TextStyle(
                  color:
                      _selectedOption == index - 1 ? Colors.black : Colors.grey,
                ),
              ),
              selected: _selectedOption == index - 1,
              onTap: () {
                setState(() {
                  _selectedOption = index - 1;
                });
              },
            ),
          );
        },
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80.0,
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'SAVE & CONTINUE',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(width: 8.0),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 18.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
