import 'package:flutter/material.dart';

class StatusScreenAdmin extends StatefulWidget {
  const StatusScreenAdmin({Key? key}) : super(key: key);

  @override
  _StatusScreenAdminState createState() => _StatusScreenAdminState();
}

class _StatusScreenAdminState extends State<StatusScreenAdmin> {
  String dropdownvalue = 'Pending';
  var items = ['Pending', 'Proses', 'Selesai'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("STATUS - ADMIN"), backgroundColor: Colors.lightBlue[900],),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.shade500,
                ),
                boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 0.5,
                      blurRadius: 0.5,
                    )
                  ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade50,
                  border: Border.all(
                    color: Colors.grey.shade500,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 0.5,
                      blurRadius: 0.5,
                    )
                  ],
                ),
                child: Container(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
