import 'package:flutter/material.dart';

class MoreDetails extends StatelessWidget {
  const MoreDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bin status as per location'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/greenbg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            border: TableBorder.all(width: 2.0, color: Colors.green),
            // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            // border: TableBorder.all(color: Colors.black),
            children: const [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'ID',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Location',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Max Weight kg',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Level %',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Status',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text('1002'),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text('Sheron'),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text('1st Main Building, SLIIT'),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text('45Kg'),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text('40%'),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text('Medium'),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(''),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
