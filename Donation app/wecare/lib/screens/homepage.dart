import 'package:flutter/material.dart';
import 'package:wecare/screens/donate_page.dart';
import '../controller/homepage_controller.dart';
import '../controller/side_nav_controller.dart';
import 'package:get/route_manager.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _categoryController = CategoryListController();
  final _bottomNavController = BottonNavController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text("Home",
            style: TextStyle(color: Colors.black, fontSize: 15.sp)),
        actions: [
          IconButton(
              onPressed: () {}, //to be managed by controller...
              icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      drawer: Sidenav(),
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 800,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // child1 ...
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: "Search...",
                    hintStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    filled: true,
                    fillColor: Colors.grey[50],
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: const Icon(Icons.filter_alt_outlined),
                    ),
                  ),
                ),

                const SizedBox(height: 50),
                // child2...
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Text(
                            "View all",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.purple,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                            color: Colors.purple,
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                //child 3 ...
                SizedBox(
                  height: 100,
                  child: GridView.builder(
                    controller: _categoryController.homepageController,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 80,
                      //mainAxisExtent: 20,
                      childAspectRatio: 1.5 / 2,
                      crossAxisSpacing: 20,
                      //mainAxisSpacing: 20
                    ),
                    itemCount: _categoryController.categories.length,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        hoverColor: Colors.black,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              color:
                                  _categoryController.categories[index].color,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: _categoryController
                                      .categories[index].icon,
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                Text(
                                    _categoryController.categories[index].title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          // ignore: todo
                          // TODO: create actions for this route in the controller
                        },
                      );
                    },
                  ),
                ),

                //child 4..
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recent Causes",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: const [
                            Text(
                              "view all",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.purple),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                              color: Colors.purple,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                // child 5...
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    //itemCount: 4,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        //height: 50,
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: Colors.black.withOpacity(0.03),
                              style: BorderStyle.solid,
                            ),
                            bottom: BorderSide(
                              color: Colors.black.withOpacity(0.03),
                              style: BorderStyle.solid,
                            ),
                            right: BorderSide(
                              color: Colors.black.withOpacity(0.03),
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        // height: 70,
                        width: 260,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 3),
                          child: Column(
                            children: [
                              //child 1 ...
                              InkWell(
                                onTap: () {
                                  // ignore: todo
                                  //TODO: write some action code here...
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  shadowColor: Colors.greenAccent,
                                  elevation: 5,
                                  //color: Colors.red,
                                  child: const SizedBox(
                                    height: 140,
                                    width: 285,
                                    child: Image(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage("image_4.jpg"),
                                    ),
                                  ),
                                ),
                              )

                              //child 2 ...
                              ,
                              const SizedBox(height: 15),
                              InkWell(
                                onTap: () {
                                  // ignore: todo
                                  //TODO: write some action code here...
                                },
                                child: const ListTile(
                                  title: Text(
                                    "Help children in critical conditions",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  subtitle: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Text("The situation fo children..."),
                                  ),
                                  trailing: Icon(Icons.more_horiz,
                                      size: 25, color: Colors.black),
                                ),
                              ),

                              // child 3..
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: const [
                                        // ignore: todo
                                        // TODO: connect the amount to the controller...
                                        Text(
                                          "30,000",
                                          style: TextStyle(
                                              color: Colors.purple,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "RAISED",
                                          style: TextStyle(
                                            fontSize: 10,
                                          ),
                                        )
                                      ],
                                    ),
                                    const AmountTracker(),
                                    Column(
                                      children: const [
                                        // ignore: todo
                                        // TODO: Setup a controller to keep the checker in check...
                                        Text(
                                          "100,000",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.purple,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "GOALS",
                                          style: TextStyle(
                                            fontSize: 10,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )

                              // child 4...
                              ,
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 4),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // ignore: todo
                                        //TODO: write some action code here...
                                      },
                                      child: const Icon(
                                        Icons.thumb_up,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Text("2451"),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // ignore: todo
                                        //TODO: write some action code here...
                                      },
                                      child: const Icon(
                                        Icons.share_sharp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Text("Share"),
                                    const SizedBox(width: 15),
                                    InkWell(
                                      onTap: () {
                                        // ignore: todo
                                        Get.to( DonatePage());
                                        //TODO: write some action code here...
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        height: 32,
                                        width: 80,
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Text(
                                            "DONATE",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // dynamic bottom navigation bar...
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purple[600],
          //showUnselectedLabels: true,
          //backgroundColor: Colors.white,
          items: _bottomNavController.itemList
              .map((itemList) => BottomNavigationBarItem(
                  icon: itemList.icon, label: itemList.label))
              .toList()),
    );
  }
}

// side navigation panel....
class Sidenav extends StatelessWidget {
  Sidenav({Key? key}) : super(key: key);
  final _controller = SideNavController();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 50),
          child: Row(
            // child1
            children: [
              CircleAvatar(
                backgroundColor: Colors.greenAccent[400],
                radius: 30,
                backgroundImage:
                    AssetImage(_controller.profileInfos[0].imageItem),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_controller.profileInfos[0].userName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.sp)),
                  const SizedBox(height: 15),
                  Text(_controller.profileInfos[0].emailAddress,
                      style: TextStyle(fontSize: 10.sp))
                ],
              )
            ],
          ),
        ),
        Expanded(
          // child 2...
          child: ListView.builder(
            itemCount: _controller.items.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(_controller.items[index].routeName,
                  style: TextStyle(fontSize: 12.sp)),
              trailing: _controller.items[index].icon,
              hoverColor: Colors.redAccent.withOpacity(0.5),
              onTap: () {},
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: (10.5).h, left: 15.w, right: 15.w),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              shadowColor: Colors.purpleAccent,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              minimumSize: const Size(200, 50),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Sign Out"),
                SizedBox(width: 50),
                Icon(Icons.logout_rounded)
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class AmountTracker extends StatelessWidget {
  const AmountTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                color: Colors.purple,
                value: 0.3,
                backgroundColor: Colors.grey[100],
              ),
              const Center(
                // ignore: todo
                // TODO: get the percentage value from the controllers current value.
                child: Text("30%"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
