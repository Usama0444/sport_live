import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_live/Models/player_model.dart';
import '../../../constant/constants.dart';
import '../../../constant/themes.dart';

class CaptainVoiceCaptainItem extends StatefulWidget {
  PlayerModel player;
  int playerIndex;
  CaptainVoiceCaptainItem({
    Key? key,
    required this.player,
    required this.playerIndex,
  }) : super(key: key);
  @override
  _CaptainVoiceCaptainItemState createState() => _CaptainVoiceCaptainItemState();
}

class _CaptainVoiceCaptainItemState extends State<CaptainVoiceCaptainItem> {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1.0,
      child: Container(
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
                        // child: ClipOval(
                        //   child: Image.network(
                        //     'https://dream11.tennisworldxi.com/storage/app/${widget.player.player_pic}',
                        //     fit: BoxFit.cover,
                        //   ),
                        // )
                      ),
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 1.0,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: Center(
                                child: Text(
                                  'C',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    color: AllCoustomTheme.getBlackAndWhiteThemeColors(),
                                    fontSize: AppConstant.SIZE_TITLE12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 10,
                      child: Text('|'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 1.0,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
                              child: Center(
                                child: Text(
                                  'VC',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    color: AllCoustomTheme.getBlackAndWhiteThemeColors(),
                                    fontSize: AppConstant.SIZE_TITLE12,
                                  ),
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
