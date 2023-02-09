import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sport_live/Controllers/TeamController.dart';
import 'package:sport_live/Models/player_model.dart';
import 'package:sport_live/Screens/CreateTeamViews/captain_voice_captain_view.dart';
import 'package:sport_live/Screens/CreateTeamViews/player_view_item.dart';

class SelectPlayers extends StatefulWidget {
  const SelectPlayers({super.key});

  @override
  State<SelectPlayers> createState() => _SelectPlayersState();
}

class _SelectPlayersState extends State<SelectPlayers> {
  var controller = Get.put(TeamCotroller(), permanent: true);
  bool isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getPlayers().then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Add Players'),
          ),
          floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                controller.saveteam();
              },
              label: Row(
                children: [
                  Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              )),
          body: isLoading
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(child: CircularProgressIndicator()),
                  ],
                )
              : GetBuilder<TeamCotroller>(
                  builder: (controller) {
                    return Column(
                      children: [
                        Expanded(
                            child: ListView.builder(
                                itemCount: controller.players.length,
                                itemBuilder: (context, index) {
                                  return PlayerViewItem(
                                      player: PlayerModel(
                                        match_id: 1,
                                        player_credit: 2,
                                        player_id: controller.players[index].player_id,
                                        player_name: controller.players[index].player_name,
                                        player_pic: controller.players[index].player_pic,
                                        player_role: 'player_role',
                                        player_team_name: 'player_team_name',
                                      ),
                                      playerIndex: index);
                                }))
                      ],
                    );
                  },
                )),
    );
  }
}
