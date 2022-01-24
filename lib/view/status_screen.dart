import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  String dropdownvalue = 'Pending';
  var items = ['Pending', 'Proses', 'Selesai'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  )),
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(label: Text("PELAPOR")),
                  DataColumn(label: Text("FOTO")),
                  DataColumn(label: Text("KETERANGAN")),
                  DataColumn(label: Text("STATUS")),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text("KOMINFO")),
                      DataCell(Icon(Icons.image)),
                      DataCell(Text("Keterangan Kerusakan")),
                      DataCell(
                        DropdownButton<String>(
                          value: dropdownvalue,
                          icon: Icon(Icons.keyboard_arrow_down),
                          onChanged: (
                            String? newValue,
                          ) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                          items: items.map((String items) {
                            return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                ));
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
