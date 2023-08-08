import 'package:flutter/material.dart';
import 'package:zerozilla_task/screens/Login.dart';

import 'detailList.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  String? selectedItem;
  String? selectedItem1;
  String? selectedItem2;

  bool isDropdownVisible = false;

  final List<GridItem> gridItems = [
    GridItem(iconData: Icons.bolt_outlined, title: 'Energies', number: 42),
    GridItem(
        iconData: Icons.radio_button_checked_rounded,
        title: 'Fence',
        number: 17),
    GridItem(iconData: Icons.wb_sunny_outlined, title: 'Solar', number: 99),
    GridItem(
        iconData: Icons.charging_station_outlined,
        title: 'Battery',
        number: 99),
  ];

  final List<String> karnatakaDistricts = [
    'Bangalore Urban',
    'Mysore',
    'Dakshina Kannada',
    'Belgaum',
  ];

  final List<String> districtDivisions = [
    'Bangalore Division',
    'Mysore Division',
    'Belgaum Division',
    'Kalaburagi Division',
  ];

  final List<String> subDivisions = [
    'North Bangalore',
    'South Bangalore',
    'Mysore City',
    'Mysore Rural',
  ];
  bool _isListVisible = false;
  bool _isListVisible1 = false;
  bool _isListVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          leading: Container(),
          flexibleSpace: Container(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green[50],
                            ),
                            child: const ClipOval(
                              child: Icon(
                                Icons.school,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Division Office"),
                              Row(
                                children: [
                                  const Text(
                                    "Madikeri",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green[800],
                                      ),
                                      child: const ClipOval(
                                          child: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.white,
                                      )))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.green[800],
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 25.0,
                            ),
                          ),
                          Positioned(
                            top: 4,
                            right: 6,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                '2',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Fence Details",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.gpp_good_outlined,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Working"),
                        ),
                        Text(
                          "18",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.error_outline,
                            color: Colors.orangeAccent,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Faulty"),
                        ),
                        Text(
                          "2",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.doorbell_outlined,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Attention"),
                        ),
                        Text(
                          "1",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: gridItems.length,
            itemBuilder: (BuildContext context, int index) {
              var grid = gridItems[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Card(
                  color: _selectedIndex == index
                      ? Colors.green[800]
                      : Colors.white,
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 12,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            grid.iconData,
                            color: _selectedIndex == index
                                ? Colors.white
                                : Colors.green[900],
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            grid.title,
                            style: TextStyle(
                                color: _selectedIndex == index
                                    ? Colors.white
                                    : Colors.green[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${grid.number}',
                            style: TextStyle(
                                color: _selectedIndex == index
                                    ? Colors.white
                                    : Colors.green[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        child: BottomAppBar(
          height: MediaQuery.of(context).size.height * .09,
          shape: const CircularNotchedRectangle(),
          color: Colors.green[800],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 10,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 10, 0, 10),
                                        alignment: Alignment.topLeft,
                                        child: const Text("Select Circle")),
                                    Column(
                                      children: [
                                        Card(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 10, 20, 5),
                                          elevation: 2,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 20),
                                                  child: Text(selectedItem ??
                                                      "Select any item"),
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        _isListVisible =
                                                        !_isListVisible;
                                                      });
                                                    },
                                                    icon: Icon(_isListVisible
                                                        ? Icons.expand_less
                                                        : Icons.expand_more))
                                              ],
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: _isListVisible,
                                          child: Card(
                                            margin: const EdgeInsets.fromLTRB(
                                                20, 10, 20, 5),
                                            elevation: 4,
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount:
                                                karnatakaDistricts.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                    int index) {
                                                  return InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        selectedItem =
                                                            karnatakaDistricts[
                                                            index]
                                                                .toString();
                                                        _isListVisible = false;
                                                      });
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(8.0),
                                                          child: Text(
                                                              karnatakaDistricts[
                                                              index]),
                                                        ),
                                                        if (selectedItem ==
                                                            karnatakaDistricts[
                                                            index]
                                                                .toString())
                                                          const Padding(
                                                            padding:
                                                            EdgeInsets.all(
                                                                8.0),
                                                            child: Icon(
                                                                Icons.check),
                                                          )
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 10, 0, 10),
                                        alignment: Alignment.topLeft,
                                        child: const Text("Select Division")),
                                    Column(
                                      children: [
                                        Card(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 10, 20, 5),
                                          elevation: 2,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 20),
                                                  child: Text(selectedItem1 ??
                                                      "Select any item"),
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        _isListVisible1 =
                                                        !_isListVisible1;
                                                      });
                                                    },
                                                    icon: Icon(_isListVisible1
                                                        ? Icons.expand_less
                                                        : Icons.expand_more))
                                              ],
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: _isListVisible1,
                                          child: Card(
                                            margin: const EdgeInsets.fromLTRB(
                                                20, 10, 20, 5),
                                            elevation: 4,
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount:
                                                districtDivisions.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                    int index) {
                                                  return InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        selectedItem1 =
                                                            districtDivisions[
                                                            index]
                                                                .toString();
                                                        _isListVisible1 = false;
                                                      });
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(8.0),
                                                          child: Text(
                                                              districtDivisions[
                                                              index]),
                                                        ),
                                                        if (selectedItem1 ==
                                                            districtDivisions[
                                                            index]
                                                                .toString())
                                                          const Padding(
                                                            padding:
                                                            EdgeInsets.all(
                                                                8.0),
                                                            child: Icon(
                                                                Icons.check),
                                                          )
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 10, 0, 10),
                                        alignment: Alignment.topLeft,
                                        child:
                                        const Text("Select Sub-Division")),
                                    Column(
                                      children: [
                                        Card(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 10, 20, 5),
                                          elevation: 2,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 20),
                                                  child: Text(selectedItem2 ??
                                                      "Select any item"),
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        _isListVisible2 =
                                                        !_isListVisible2;
                                                      });
                                                    },
                                                    icon: Icon(_isListVisible2
                                                        ? Icons.expand_less
                                                        : Icons.expand_more))
                                              ],
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: _isListVisible2,
                                          child: Card(
                                            margin: const EdgeInsets.fromLTRB(
                                                20, 10, 20, 5),
                                            elevation: 4,
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: subDivisions.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                    int index) {
                                                  return InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        selectedItem2 =
                                                            subDivisions[index]
                                                                .toString();
                                                        _isListVisible2 = false;
                                                      });
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(8.0),
                                                          child: Text(
                                                              subDivisions[
                                                              index]),
                                                        ),
                                                        if (selectedItem2 ==
                                                            subDivisions[index]
                                                                .toString())
                                                          const Padding(
                                                            padding:
                                                            EdgeInsets.all(
                                                                8.0),
                                                            child: Icon(
                                                                Icons.check),
                                                          )
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                          left: 20,
                                          right: 20,
                                        ),
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            .05,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const DetailListPage()));
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                              Colors.green[900]),
                                          child: const Text("Confirm"),
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20, bottom: 20),
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            .05,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        child: ElevatedButton(
                                            onPressed: () => Navigator.pop(context),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white70,
                                            ),
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )))
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      });
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: const Row(
                    children: [
                      Icon(Icons.donut_small),
                      Text("Dashboard"),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 10,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 10, 0, 10),
                                        alignment: Alignment.topLeft,
                                        child: const Text("Select Circle")),
                                    Column(
                                      children: [
                                        Card(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 10, 20, 5),
                                          elevation: 2,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(selectedItem ??
                                                      "Select any item"),
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        _isListVisible =
                                                            !_isListVisible;
                                                      });
                                                    },
                                                    icon: Icon(_isListVisible
                                                        ? Icons.expand_less
                                                        : Icons.expand_more))
                                              ],
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: _isListVisible,
                                          child: Card(
                                            margin: const EdgeInsets.fromLTRB(
                                                20, 10, 20, 5),
                                            elevation: 4,
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount:
                                                    karnatakaDistricts.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        selectedItem =
                                                            karnatakaDistricts[
                                                                    index]
                                                                .toString();
                                                        _isListVisible = false;
                                                      });
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Text(
                                                              karnatakaDistricts[
                                                                  index]),
                                                        ),
                                                        if (selectedItem ==
                                                            karnatakaDistricts[
                                                                    index]
                                                                .toString())
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: Icon(
                                                                Icons.check),
                                                          )
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 10, 0, 10),
                                        alignment: Alignment.topLeft,
                                        child: const Text("Select Division")),
                                    Column(
                                      children: [
                                        Card(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 10, 20, 5),
                                          elevation: 2,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(selectedItem1 ??
                                                      "Select any item"),
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        _isListVisible1 =
                                                            !_isListVisible1;
                                                      });
                                                    },
                                                    icon: Icon(_isListVisible1
                                                        ? Icons.expand_less
                                                        : Icons.expand_more))
                                              ],
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: _isListVisible1,
                                          child: Card(
                                            margin: const EdgeInsets.fromLTRB(
                                                20, 10, 20, 5),
                                            elevation: 4,
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount:
                                                    districtDivisions.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        selectedItem1 =
                                                            districtDivisions[
                                                                    index]
                                                                .toString();
                                                        _isListVisible1 = false;
                                                      });
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Text(
                                                              districtDivisions[
                                                                  index]),
                                                        ),
                                                        if (selectedItem1 ==
                                                            districtDivisions[
                                                                    index]
                                                                .toString())
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: Icon(
                                                                Icons.check),
                                                          )
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 10, 0, 10),
                                        alignment: Alignment.topLeft,
                                        child:
                                            const Text("Select Sub-Division")),
                                    Column(
                                      children: [
                                        Card(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 10, 20, 5),
                                          elevation: 2,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(selectedItem2 ??
                                                      "Select any item"),
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        _isListVisible2 =
                                                            !_isListVisible2;
                                                      });
                                                    },
                                                    icon: Icon(_isListVisible2
                                                        ? Icons.expand_less
                                                        : Icons.expand_more))
                                              ],
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: _isListVisible2,
                                          child: Card(
                                            margin: const EdgeInsets.fromLTRB(
                                                20, 10, 20, 5),
                                            elevation: 4,
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: subDivisions.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        selectedItem2 =
                                                            subDivisions[index]
                                                                .toString();
                                                        _isListVisible2 = false;
                                                      });
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Text(
                                                              subDivisions[
                                                                  index]),
                                                        ),
                                                        if (selectedItem2 ==
                                                            subDivisions[index]
                                                                .toString())
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: Icon(
                                                                Icons.check),
                                                          )
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                          left: 20,
                                          right: 20,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .05,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const DetailListPage()));
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.green[900]),
                                          child: const Text("Confirm"),
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20, bottom: 20),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .05,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: ElevatedButton(
                                            onPressed: () => Navigator.pop(context),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white70,
                                            ),
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )))
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(Icons.tune),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(50)),
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage())),
                    child: const Icon(Icons.person)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GridItem {
  final IconData iconData;
  final String title;
  final int number;

  GridItem({required this.iconData, required this.title, required this.number});
}

class BasicDistrict {
  final List<BasicDistrict> karnatakaDistricts;

  BasicDistrict({this.karnatakaDistricts = const []});
}
