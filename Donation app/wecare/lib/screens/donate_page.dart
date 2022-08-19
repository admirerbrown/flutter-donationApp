import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:wecare/controller/donation_details_controller.dart';

// ignore: must_be_immutable
class DonatePage extends StatelessWidget {
  DonatePage({Key? key}) : super(key: key);
  final DonationController donate = Get.put(DonationController());
  final _donorController = Get.put(DonorTypeController());
  dynamic flag = "";
  String symbol = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black54,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Donate",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
              letterSpacing: 3.0,
              color: Colors.black54),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("How much do you want to donate?",
                style: TextStyle(
                  color: Colors.black54,
                  height: 1.5,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 20),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 95,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0,
                          color: Colors.purple.shade700,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        "50",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 35,
                    width: 95,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0,
                          color: Colors.purple.shade700,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        "100",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 35,
                    width: 95,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0,
                          color: Colors.purple.shade700,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        "150",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: const [
                  SizedBox(
                    width: 145,
                    child: Divider(
                      color: Colors.black26,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "or",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 145,
                    child: Divider(
                      color: Colors.black26,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Type your amount",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              textAlign: TextAlign.justify,
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(width: 2, color: Colors.purple),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                  ),
                ),
                prefixIcon: InkWell(
                  onTap: () {
                    showCurrencyPicker(
                      context: context,
                      onSelect: (Currency currency) {
                        flag = CurrencyUtils.currencyToEmoji(currency);
                        symbol = currency.symbol;
                        donate.countryFlag(flag, symbol);

                        // print(flag.runtimeType);
                        // print(flag);
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: GetBuilder<DonationController>(
                            builder: (_) => Text(
                              // setting the currency flag...
                              donate.flag,
                              style: const TextStyle(fontSize: 27),
                            ),
                          ),
                          // ignore: avoid_print
                        ),
                        const Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        GetBuilder<DonationController>(
                          builder: (_) => Text(
                            // setting the currency symbol...
                            donate.symbol,
                            style: const TextStyle(fontSize: 21),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                hintText: "0",
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.purple[50],
                          radius: 23,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    //print("the value has been increased by 1");
                                  },
                                  child: const Icon(Icons.arrow_upward,
                                      size: 15, color: Colors.black),
                                ),
                                InkWell(
                                  onTap: () {
                                    //print("the value has been decreased 1");
                                  },
                                  child: const Icon(Icons.arrow_downward,
                                      size: 15, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Donation details",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black54),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _donorController.donor.length,
                itemBuilder: (BuildContext context, index) {
                  return GetBuilder<DonorTypeController>(
                    builder: (_) {
                      return InkWell(
                        onTap: () {
                          var selected = _donorController.isType(index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(color: Colors.white),
                            ),
                            child: ListTile(
                              title: Text(
                                _donorController.donor[index].type,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              ),
                              trailing: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 2.5,
                                      color: Colors.purple.shade200,
                                      style: BorderStyle.solid),
                                ),
                                child: CircleAvatar(
                                    radius: 6,
                                    backgroundColor:
                                        _donorController.donor[index].color),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: InkWell(
                onTap: (() {}),
                child: Card(
                  color: Colors.purple,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const ListTile(
                    title: Text(
                      "Pay Now",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
