import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:wastage_detection/more_details.dart';

class TodayTarget extends StatelessWidget {
  const TodayTarget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Full": 50,
      "Medium": 30,
      "Empty": 20,
    };
    return Scaffold(
      appBar: AppBar(
        title: Text('Bin Status'),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/greenbg.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Bin status chart in percentage',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PieChart(
                      dataMap: dataMap,
                      animationDuration: Duration(milliseconds: 800),
                      chartLegendSpacing: 32,
                      chartRadius: MediaQuery.of(context).size.width / 3.2,
                      initialAngleInDegree: 0,
                      chartType: ChartType.ring,
                      ringStrokeWidth: 32,
                      centerText: "BIN STATUS %",
                      legendOptions: const LegendOptions(
                        showLegendsInRow: false,
                        legendPosition: LegendPosition.right,
                        showLegends: true,
                        legendShape: BoxShape.circle,
                        legendTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      chartValuesOptions: ChartValuesOptions(
                        showChartValueBackground: true,
                        showChartValues: true,
                        showChartValuesInPercentage: false,
                        showChartValuesOutside: false,
                        decimalPlaces: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Bin status table of each users',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                      border: TableBorder.all(width: 2.0, color: Colors.green),
                      // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      // border: TableBorder.all(color: Colors.black),
                      children: const [
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'ID',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'Status',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text('1002'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text('20%'),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text('1254'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text('20%'),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text('1464'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text('50%'),
                          ),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MoreDetails()),
                    );
                  },
                  child: Text('More Info')),
              Spacer(
                flex: 1,
              ),
            ],
          )),
    );
  }
}
