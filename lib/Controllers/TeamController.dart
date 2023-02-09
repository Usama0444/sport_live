import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sport_live/Models/player_model.dart';

class TeamCotroller extends GetxController {
  List<bool> isSelect = [];
  List<PlayerModel> players = [];
  Uint8List? img;
  List<String> selectedPlayerId = [];
  var teamName = TextEditingController();

  Future getPlayers() async {
    isSelect.clear();
    players.clear();
    selectedPlayerId.clear();
    var response = await Dio().get('https://livescore.tennisworldxi.com/api/user/players');
    if (response.statusCode == 200) {
      for (int i = 0; i < response.data['players'].length; i++) {
        players.add(PlayerModel(
            match_id: 1,
            player_credit: 'player_credit',
            player_id: response.data['players'][i]['id'],
            player_name: response.data['players'][i]['player_name'],
            player_pic: response.data['players'][i]['profile_image'],
            player_role: 'player_role',
            player_team_name: 'player_team_name'));
        isSelect.add(false);
        print('${response.data['players'][i]['id']}');
        update();
      }
    }
  }

  takePhoto() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      final tempImage = await File(image!.path);
      img = await tempImage.readAsBytes();
      update();
    } on PlatformException catch (e, stack) {
      return false;
    }
  }

  saveteam() async {
    print('team name $teamName');
    print('selected player ids ${json.encode(selectedPlayerId)}');
    print('img $img');
  }
}
