import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sport_live/Controllers/TeamController.dart';
import 'package:sport_live/Models/player_model.dart';
import '../../../constant/constants.dart';
import '../../../constant/themes.dart';

class PlayerViewItem extends StatefulWidget {
  PlayerModel player;
  int playerIndex;
  PlayerViewItem({
    Key? key,
    required this.player,
    required this.playerIndex,
  }) : super(key: key);
  @override
  _PlayerViewItemState createState() => _PlayerViewItemState();
}

class _PlayerViewItemState extends State<PlayerViewItem> {
  var controller = Get.find<TeamCotroller>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TeamCotroller>(builder: (controller) {
      return Container(
        height: 60,
        color: AllCoustomTheme.getThemeData().backgroundColor,
        child: Material(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 2),
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            // child: Image.network(
                            //   'https://dream11.tennisworldxi.com/storage/app/${widget.player.player_pic}',
                            //   fit: BoxFit.cover,
                            // ),
                            child: Image.asset('assets/default.jpg'),
                          )),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              child: Text(
                                '${widget.player.player_name}',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: AllCoustomTheme.getBlackAndWhiteThemeColors(),
                                  fontSize: AppConstant.SIZE_TITLE12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      width: 0.4,
                      child: Container(
                        color: AllCoustomTheme.getTextThemeColors().withOpacity(0.5),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (controller.isSelect[widget.playerIndex]) {
                          controller.isSelect[widget.playerIndex] = false;
                          for (int i = 0; i < controller.selectedPlayerId.length; i++) {
                            if (controller.selectedPlayerId[i] == widget.player.player_id.toString()) {
                              controller.selectedPlayerId.removeAt(i);
                              break;
                            }
                          }
                        } else {
                          controller.isSelect[widget.playerIndex] = true;
                          print(widget.player.player_id);
                          controller.selectedPlayerId.add(widget.player.player_id.toString());
                        }
                        controller.update();
                      },
                      child: Container(
                        padding: EdgeInsets.only(right: 8.w),
                        child: Center(
                          child: SizedBox(
                            width: 40,
                            child: Icon(
                              controller.isSelect[widget.playerIndex] ? Icons.close : Icons.add,
                              color: controller.isSelect[widget.playerIndex] ? Colors.red : Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1,
              ),
            ],
          ),
        ),
      );
    });
  }
}
