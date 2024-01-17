import 'package:flutter/material.dart';
import 'package:untitled6/StorySection.dart';

class Users {
  Users(this.userName,this.userPassword,this.userProfile);
  final String userName;
  final int userPassword;
  final String userProfile;
}

class UserModel {
  UserModel(this.userName, this.userProfile, this.stories);
  final String userName;
  final String userProfile;
  final List<StoryModel> stories;
}

class StoryModel {
  StoryModel(this.imageUrl);
  final String imageUrl;
}

Users user1 = Users("Kullanıcı1", 123, "https://upload.wikimedia.org/wikipedia/tr/7/7e/Beykent_Universitesi_Logo_Yeni.png");

