import 'package:bytebank_v2/screens/contacts_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Image.network('https://lh3.googleusercontent.com/proxy/IrNTQfqkuQ2G-nNLpjHY4cSMz7Gh6p226-zb6fZQIh-tx_rTXpRYCeGC-iMOFrlG1UeloXS5u3rnqX74sf9LfCeLo6U-v78nkhoQ2fAAgFGIsfU')
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Theme.of(context).primaryColor,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ContactsList(),
                    ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    height: 100,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.people,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        Text(
                          'Contacts',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
