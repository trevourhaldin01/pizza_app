// abstract class that calls user repository

// you dont create the methods in the abstract class, create therm in firebase_user_repository.dart

import 'package:user_repository/src/models/models.dart';

abstract class UserRepository {
  Stream<MyUser> get user; //CHECK authenticated user

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> setUserData(MyUser myUser);

  Future<void> signIn(String email, String password);

  Future<void> logOut();

  
}