import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_live/constant/constants.dart';
import 'package:sport_live/constant/themes.dart';

class ManagePayment extends StatefulWidget {
  const ManagePayment({Key? key}) : super(key: key);
  @override
  _ManagePaymentState createState() => _ManagePaymentState();
}

class _ManagePaymentState extends State<ManagePayment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AllCoustomTheme.getThemeData().backgroundColor,
          body: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    color: AllCoustomTheme.getThemeData().primaryColor,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: AppBar().preferredSize.height,
                          child: Row(
                            children: <Widget>[
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: AppBar().preferredSize.height,
                                    height: AppBar().preferredSize.height,
                                    child: const Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Manage Payment',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: AllCoustomTheme.getThemeData().backgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: AppBar().preferredSize.height,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: ListView(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 60,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Preferred Payment Methods',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity * 0.7,
                          height: MediaQuery.of(context).size.height * 0.12,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.grey,
                          )),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/phonepe.png',
                                            width: 30,
                                            height: 40,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            'UPI - PhonePe',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey, width: 1),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Center(
                                            child: Icon(
                                          Icons.check,
                                          color: Colors.grey,
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  color: Colors.grey,
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/paytm.png',
                                            width: 30,
                                            height: 40,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            'UPI - PayTM',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey, width: 1),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Center(
                                            child: Icon(
                                          Icons.check,
                                          color: Colors.grey,
                                        )),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Cards, UPI & More',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity * 0.7,
                          height: MediaQuery.of(context).size.height * 0.45,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.grey,
                          )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.credit_card,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Card',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          'Visa, MasterCard, RuPay& More',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.grey,
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.credit_card,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'UPI',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          'Pay With installed app, or use others',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            'assets/googlepay.PNG',
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'GooglePay',
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            'assets/phonepe.png',
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'PhonePe',
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Image.asset(
                                          'assets/paytm.png',
                                          width: 40,
                                          height: 40,
                                        ),
                                      ),
                                      const Text(
                                        'PayTM',
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            'assets/other.png',
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Others',
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const Divider(
                                color: Colors.grey,
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/netbank.png',
                                      width: 30,
                                      height: 40,
                                      fit: BoxFit.fitWidth,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Netbanking',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          'All indian banks',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.grey,
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.credit_card,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Wallet',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          'Freecharge & More',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '₹ 100',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Text('View Details'),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 250,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 204, 199, 199),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Pay Now',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showInSnackBar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          value,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            color: AllCoustomTheme.getReBlackAndWhiteThemeColors(),
          ),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  void showInSnackBars(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          value,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: AppConstant.SIZE_TITLE14,
            color: AllCoustomTheme.getReBlackAndWhiteThemeColors(),
          ),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
