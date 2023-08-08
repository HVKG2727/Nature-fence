import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'homePage.dart';

class DetailListPage extends StatefulWidget {
  const DetailListPage({super.key});

  @override
  State<DetailListPage> createState() => _DetailListPageState();
}

class _DetailListPageState extends State<DetailListPage> {
  bool _isChecked = false;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  final List<ListItem> listItems = [
    ListItem(
        iconData: Icons.airline_seat_legroom_reduced,
        title: 'Home',
        backgroundColor: Colors.red.shade100),
    ListItem(
        iconData: Icons.thunderstorm,
        title: 'Favorites',
        backgroundColor: Colors.green.shade100),
    ListItem(
        iconData: Icons.gpp_good,
        title: 'Profile',
        backgroundColor: Colors.green.shade100),
    ListItem(
        iconData: Icons.error,
        title: 'Profile',
        backgroundColor: Colors.orangeAccent.shade100),
    ListItem(
        iconData: Icons.error,
        title: 'Profile',
        backgroundColor: Colors.orangeAccent.shade100),
    ListItem(
        iconData: Icons.error,
        title: 'Profile',
        backgroundColor: Colors.orangeAccent.shade100),
    ListItem(
        iconData: Icons.error,
        title: 'Profile',
        backgroundColor: Colors.orangeAccent.shade100),
    ListItem(
        iconData: Icons.error,
        title: 'Profile',
        backgroundColor: Colors.orangeAccent.shade100),
    ListItem(
        iconData: Icons.error,
        title: 'Profile',
        backgroundColor: Colors.orangeAccent.shade100),
    ListItem(
        iconData: Icons.error,
        title: 'Profile',
        backgroundColor: Colors.orangeAccent.shade100),
    ListItem(
        iconData: Icons.error,
        title: 'Profile',
        backgroundColor: Colors.red.shade100),
    ListItem(
        iconData: Icons.error,
        title: 'Profile',
        backgroundColor: Colors.red.shade100),
    ListItem(
        iconData: Icons.error,
        title: 'Profile',
        backgroundColor: Colors.red.shade100),
    ListItem(
        iconData: Icons.error,
        title: 'Profile',
        backgroundColor: Colors.red.shade100),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Homepage())),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.green,
            ),
          ),
          flexibleSpace: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Fence List of Division office",
                      style: TextStyle(color: Colors.green[200], fontSize: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
                          "Madikeri",
                          style: TextStyle(color: Colors.green[800], fontWeight: FontWeight.bold),
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
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search",
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(
                                      20), // Set your desired top corner radius
                                ),
                              ),
                              builder: (BuildContext context) {
                                return StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter setState) {
                                  return ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .5,
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Filters",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                IconButton(
                                                    onPressed: () => Navigator.pop(context),
                                                    icon:
                                                        const Icon(Icons.close))
                                              ],
                                            ),
                                          ),
                                          Container(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              alignment: Alignment.topLeft,
                                              child: const Text(
                                                  "Apply filters to sort list")),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                flex: 5000,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Expanded(
                                                            flex: 2000,
                                                            child: Icon(
                                                              Icons
                                                                  .error_outline,
                                                              color: Colors
                                                                  .orangeAccent,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 5000,
                                                            child: Text(
                                                              'Faulty',
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                          .green[
                                                                      900],
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 3000,
                                                            child: Checkbox(
                                                              activeColor:
                                                                  Colors.grey[
                                                                      300],
                                                              checkColor:
                                                                  Colors.green,
                                                              value: _isChecked,
                                                              onChanged:
                                                                  (newValue) {
                                                                setState(() {
                                                                  _isChecked =
                                                                      newValue!;
                                                                });
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              top: 10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all()),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Expanded(
                                                              flex: 2000,
                                                              child: Icon(
                                                                Icons
                                                                    .gpp_good_outlined,
                                                                color: Colors
                                                                    .green,
                                                              )),
                                                          Expanded(
                                                            flex: 5000,
                                                            child: Text(
                                                              'Working',
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                          .green[
                                                                      900],
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 3000,
                                                            child: Checkbox(
                                                              activeColor:
                                                                  Colors.grey[
                                                                      300],
                                                              checkColor:
                                                                  Colors.green,
                                                              value:
                                                                  _isChecked1,
                                                              onChanged:
                                                                  (newValue) {
                                                                setState(() {
                                                                  _isChecked1 =
                                                                      newValue!;
                                                                });
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                flex: 5000,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Expanded(
                                                            flex: 2000,
                                                            child: Icon(
                                                              Icons
                                                                  .notifications_active_outlined,
                                                              color: Colors.red,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 5000,
                                                            child: Text(
                                                              'Attention',
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                          .green[
                                                                      900],
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 3000,
                                                            child: Checkbox(
                                                              activeColor:
                                                                  Colors.grey[
                                                                      300],
                                                              checkColor:
                                                                  Colors.green,
                                                              value:
                                                                  _isChecked2,
                                                              onChanged:
                                                                  (newValue) {
                                                                setState(() {
                                                                  _isChecked2 =
                                                                      newValue!;
                                                                });
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              top: 10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all()),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Expanded(
                                                              flex: 2000,
                                                              child: Icon(
                                                                Icons
                                                                    .settings_power_outlined,
                                                                color: Colors
                                                                    .green,
                                                              )),
                                                          Expanded(
                                                            flex: 5000,
                                                            child: Text(
                                                              'SwitchOff',
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                          .green[
                                                                      900],
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 3000,
                                                            child: Checkbox(
                                                              activeColor:
                                                                  Colors.grey[
                                                                      300],
                                                              checkColor:
                                                                  Colors.green,
                                                              value:
                                                                  _isChecked3,
                                                              onChanged:
                                                                  (newValue) {
                                                                setState(() {
                                                                  _isChecked3 =
                                                                      newValue!;
                                                                });
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          const Divider(
                                            thickness: 2,
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () => Navigator.pop(context),
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                                child: const Text(
                                                  "Cancel",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const DashboardPage()));
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.green[900]),
                                                child: const Text(
                                                  "Apply",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              });
                        },
                        icon: const Icon(Icons.filter_list))
                  ],
                ),
              ),
            ],
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50)),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: SafeArea(
          child: ListView.builder(
              itemCount: listItems.length,
              itemBuilder: (BuildContext context, int index) {
                var list = listItems[index];
                return Column(
                  children: [
                    Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: list.backgroundColor,
                                ),
                                child: Icon(list.iconData)),
                            Text(list.title),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.green,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}

class ListItem {
  final IconData iconData;
  final String title;
  final Color backgroundColor;

  ListItem(
      {required this.iconData,
      required this.title,
      required this.backgroundColor});
}
