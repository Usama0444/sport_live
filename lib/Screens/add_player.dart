import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddNewPlayer extends StatefulWidget {
  const AddNewPlayer({super.key});

  @override
  State<AddNewPlayer> createState() => _AddNewPlayerState();
}

class _AddNewPlayerState extends State<AddNewPlayer> {
  var dropVal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Icon(Icons.edit),
          SizedBox(
            width: 20.w,
          ),
          const Icon(Icons.more_vert),
          SizedBox(
            width: 20.w,
          ),
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dhanesh xi',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Short Name : DX',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 200.w,
                  height: 200.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Name : '),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 180.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter name',
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Player Role :'),
                        Container(
                          width: 180.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.w),
                            child: DropdownButtonFormField<String>(
                              value: dropVal,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              hint: Text(
                                'Search...',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.grey[600],
                                ),
                              ),
                              onChanged: (value) {
                                dropVal = value!;
                              },
                              validator: (value) => value == null ? 'Selection required' : null,
                              items: ['Batsman', 'Bowler', 'All-Rounder', 'Wicket-Keeper'].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Pick Image'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Update'),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add New Player'),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 428.w,
              height: 400.h,
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return ListTile(
                      tileColor: Colors.green[100],
                      leading: Container(
                        width: 100.w,
                        height: 100.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      title: const Text('Anil'),
                      subtitle: const Text('Bowler'),
                      trailing: const Icon(Icons.edit),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class AddPlayerDialog extends StatefulWidget {
  const AddPlayerDialog({super.key});

  @override
  State<AddPlayerDialog> createState() => _AddPlayerDialogState();
}

class _AddPlayerDialogState extends State<AddPlayerDialog> {
  var dropVal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SizedBox(
          width: 428.w,
          height: 350.h,
          child: AlertDialog(
            contentPadding: EdgeInsets.zero,
            title: Center(
              child: Text(
                'Create Player',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  color: Colors.cyan,
                ),
              ),
            ),
            content: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Name : ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(flex: 1, child: TextField()),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Player Role : ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                              height: 40.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: DropdownButton(
                                value: dropVal,
                                // icon: Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                isExpanded: true,
                                style: TextStyle(color: Colors.deepPurple, fontSize: 20.0),
                                underline: Container(),
                                onChanged: (newValue) {
                                  setState(() {
                                    dropVal = newValue;
                                  });
                                },
                                items: <String>['One', 'Two', 'Free', 'Four'].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('Create'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
