import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:pharm1_mobile/table/table_purchase_retuns/screen_table_data_helper_p_r.dart';

import '../screen_table_input_1.dart';

class CustomTable_p_r extends StatefulWidget {
  const CustomTable_p_r({Key? key}) : super(key: key);

  @override
  State<CustomTable_p_r> createState() => _CustomTable_p_rState();
}

// DataTable
// ScrollController
// Row
// Column

class _CustomTable_p_rState extends State<CustomTable_p_r> {
  // ScrollGroupController,
  // To Scroll the multiple scroll-view in sync using controller
  LinkedScrollControllerGroup controllerGroup = LinkedScrollControllerGroup();

  ScrollController? headerScrollController;
  ScrollController? dataScrollController;

  @override
  void initState() {
    super.initState();
    headerScrollController = controllerGroup.addAndGet();
    dataScrollController = controllerGroup.addAndGet();
  }

  TextEditingController tec = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            tableContent(),
            tableHeader(),
          ],
        ),
      ),
    );
  }

  Widget tableContent() {
    return SingleChildScrollView(
      child: Row(
        children: [
          // start

          DataTable(
            columnSpacing: 0,
            horizontalMargin: 0,
            columns: TableDataHelper_p_r.kTableColumnsList
                .getRange(TableDataHelper_p_r.kTableColumnsList.length - 1,
                    TableDataHelper_p_r.kTableColumnsList.length)
                .map((e) {
              return DataColumn(
                label: SizedBox(
                  child: Text(e.title ?? '', textAlign: TextAlign.center),
                  width: e.width ?? 0,
                ),
              );
            }).toList(),
            // headingRowColor: MaterialStateProperty.all(Colors.orange),
            dataRowColor: MaterialStateProperty.all(Colors.orange.shade100),
            rows: List.generate(10, (index) {
              return DataRow(cells: [
                DataCell(
                  SizedBox(
                    child: Text(
                      '${index + 1}',
                      textAlign: TextAlign.center,
                    ),
                    width: TableDataHelper_p_r.kTableColumnsList.last.width,
                  ),
                )
              ]);
            }),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: dataScrollController,
              child: DataTable(
                horizontalMargin: 0,
                columnSpacing: 0,
                //headingRowColor: MaterialStateProperty.all(Colors.green),
                //dataRowColor: MaterialStateProperty.all(Colors.blue.shade100),
                columns: TableDataHelper_p_r.kTableColumnsList
                    .getRange(
                        1, TableDataHelper_p_r.kTableColumnsList.length - 1)
                    .map((e) {
                  return DataColumn(
                    label: SizedBox(
                      child: Text(e.title ?? ''),
                      width: e.width ?? 0,
                    ),
                  );
                }).toList(),
                rows: List.generate(10, (index) {
                  return DataRow(
                      color: index % 2 == 1
                          ? MaterialStateColor.resolveWith(
                              (states) => Colors.orange.shade100,
                            )
                          : MaterialStateColor.resolveWith(
                              (states) => Color(0xfff3f1f0),
                            ),
                      cells: [
                        DataCell(
                          SizedBox(
                            child: table_input(),
                            width:
                                TableDataHelper_p_r.kTableColumnsList[1].width,
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(color: Colors.white30),
                                ),
                              ),
                              child: TextFormField(
                                style: TextStyle(color: Color(0XFF1e224c)),
                                cursorColor: Color(0XFF1e224c),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                ),
                              ),
                            ),
                            width:
                                TableDataHelper_p_r.kTableColumnsList[2].width,
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(color: Colors.white30),
                                ),
                              ),
                              child: TextFormField(
                                style: TextStyle(color: Color(0XFF1e224c)),
                                cursorColor: Color(0XFF1e224c),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                ),
                              ),
                            ),
                            width:
                                TableDataHelper_p_r.kTableColumnsList[3].width,
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(color: Colors.white30),
                                ),
                              ),
                              child: TextFormField(
                                style: TextStyle(color: Color(0XFF1e224c)),
                                cursorColor: Color(0XFF1e224c),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                ),
                              ),
                            ),
                            width:
                                TableDataHelper_p_r.kTableColumnsList[4].width,
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(color: Colors.white30),
                                ),
                              ),
                              child: TextFormField(
                                style: TextStyle(color: Color(0XFF1e224c)),
                                keyboardType: TextInputType.number,
                                cursorColor: Color(0XFF1e224c),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                ),
                              ),
                            ),
                            width:
                                TableDataHelper_p_r.kTableColumnsList[5].width,
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(color: Colors.white30),
                                ),
                              ),
                              child: TextFormField(
                                style: TextStyle(color: Color(0XFF1e224c)),
                                keyboardType: TextInputType.number,
                                cursorColor: Color(0XFF1e224c),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                ),
                              ),
                            ),
                            width:
                                TableDataHelper_p_r.kTableColumnsList[6].width,
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(color: Colors.white30),
                                ),
                              ),
                              child: TextFormField(
                                readOnly: true,
                                style: TextStyle(color: Color(0XFF1e224c)),
                                cursorColor: Color(0XFF1e224c),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                ),
                              ),
                            ),
                            width:
                                TableDataHelper_p_r.kTableColumnsList[7].width,
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(color: Colors.white30),
                                ),
                              ),
                              child: TextFormField(
                                readOnly: true,
                                style: TextStyle(color: Color(0XFF1e224c)),
                                cursorColor: Color(0XFF1e224c),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                ),
                              ),
                            ),
                            width:
                                TableDataHelper_p_r.kTableColumnsList[8].width,
                          ),
                        ),
                      ]);
                }),
              ),
            ),
          ), // end
        ],
      ),
    );
  }

  Widget tableHeader() {
    return Row(
      children: [
        // start
        DataTable(
          columnSpacing: 0,
          horizontalMargin: 0,
          columns: TableDataHelper_p_r.kTableColumnsList
              .getRange(TableDataHelper_p_r.kTableColumnsList.length - 1,
                  TableDataHelper_p_r.kTableColumnsList.length)
              .map((e) {
            return DataColumn(
              label: SizedBox(
                child: Text(e.title ?? '',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center),
                width: e.width ?? 0,
              ),
            );
          }).toList(),
          headingRowColor: MaterialStateProperty.all(Color(0xffe18505)),
          // dataRowColor: MaterialStateProperty.all(Colors.orange.shade100),
          rows: const [],
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: headerScrollController,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: 0,
              headingRowColor: MaterialStateProperty.all(Color(0xffe18505)),
              // dataRowColor: MaterialStateProperty.all(Colors.blue.shade100),
              columns: TableDataHelper_p_r.kTableColumnsList
                  .getRange(1, TableDataHelper_p_r.kTableColumnsList.length - 1)
                  .map((e) {
                return DataColumn(
                  label: SizedBox(
                    child: Text(e.title ?? '',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                    width: e.width ?? 0,
                  ),
                );
              }).toList(),
              rows: const [],
            ),
          ),
        ),
        // end
      ],
    );
  }
}
