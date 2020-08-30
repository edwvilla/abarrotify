import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../pages/auth/login_page.dart';
import '../pages/list_page.dart';

abstract class BaseAuth {
  Future<String> signIn(String email, String password, BuildContext context);

  Future<String> signUp(
    String email,
    String password,
  );

  Future<String> updateUserProfile(
      {BuildContext context, Map<String, dynamic> data, User user});

  User getCurrentUser();

  Future<void> signOut(BuildContext context);

  void sendEmailVerification();

  bool isEmailVerified();
}

class Auth implements BaseAuth {
  Auth({
    FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  final FirebaseAuth _firebaseAuth;

  @override
  Future<String> signIn(
      String email, String password, BuildContext context) async {
    return await _firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((UserCredential userCredential) {
      Navigator.pushNamedAndRemoveUntil(context, ListPage.id, (_) => false);
      return userCredential.user.uid;
    });
  }

  @override
  Future<String> signUp(
    String email,
    String password,
  ) async {
    try {
      //creates a basic FirebaseAuth account
      return await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then<String>((UserCredential userCredential) {
        if (userCredential.user != null) {
          //sends an Email Verification to new User
          userCredential.user.sendEmailVerification();

          //creates a Firestore UserProfile document
          return FirebaseFirestore.instance
              .collection('users')
              .doc(userCredential.user.uid)
              .set(<String, dynamic>{
            'uid': userCredential.user.uid,
            'created': DateTime.now(),
            'profileImageURL': '',
          }).then((_) => userCredential.user.uid);
        } else {
          return 'error';
        }
      });
    } catch (e) {
      return 'error: ' + e.message.toString();
    }
  }

  @override
  Future<String> updateUserProfile(
      {BuildContext context, Map<String, dynamic> data, User user}) async {
    try {
      if (user != null && data != null) {
        //updates a UserProfile in Firestore
        return FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .update(data)
            .then((_) => user.uid);
      } else {
        return 'error';
      }
    } catch (e) {
      return 'error: ' + e.message.toString();
    }
  }

  @override
  User getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  @override
  Future<void> signOut(BuildContext context) async {
    _firebaseAuth.signOut().then(
          (void value) => Navigator.pushNamedAndRemoveUntil(
              context, LoginPage.id, (_) => false),
        );
  }

  @override
  void sendEmailVerification() {
    _firebaseAuth.currentUser.sendEmailVerification();
  }

  @override
  bool isEmailVerified() {
    return _firebaseAuth.currentUser.emailVerified;
  }
}
