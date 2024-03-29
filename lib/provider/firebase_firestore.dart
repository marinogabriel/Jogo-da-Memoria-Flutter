import '../model/users.dart';
import 'firebase_storage.dart';

import '../model/match.dart';
import '../model/user.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDatabase {
  // Atributo que irá afunilar todas as consultas
  static FirestoreDatabase helper = FirestoreDatabase._createInstance();
  // Construtor privado
  FirestoreDatabase._createInstance();

  // username do usuário logado
  String? username;

  // Ponto de acesso com o servidor
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("Users");

  //USERS
  Future<int> insertUser(Usuario user) async {
    DocumentReference ref = await userCollection.add({
      "name": user.name,
      "email": user.email,
      "username": user.username,
      "path": user.path
    });

    if (user.path != "") {
      await userCollection
          .doc(username)
          .collection("Usuarios")
          .doc(ref.id)
          .update({
        "name": user.name,
        "email": user.email,
        "username": user.username,
        "path": user.path
      });
    }

    return 0;
  }

  Future<int> updateUser(email, Usuario user) async {
    await userCollection
        .doc(username)
        .collection("Usuarios")
        .doc(email)
        .update({
      "name": user.name,
      "email": user.email,
      "username": user.username,
      "path": user.path
    });
    return 0;
  }

  Future<int> deleteUser(email) async {
    await userCollection
        .doc(username)
        .collection("Usuarios")
        .doc(email)
        .delete();
    StorageServer.helper.deleteImage(username!, email);
    return 0;
  }

  UserCollection _userListFromSnapshot(QuerySnapshot snapshot) {
    UserCollection userCollection = UserCollection();
    for (var doc in snapshot.docs) {
      Usuario user = Usuario.fromMap(doc.data());
      userCollection.insertUserOfId(doc.id, user);
    }
    return userCollection;
  }

  Future<UserCollection> getUserList() async {
    QuerySnapshot snapshot =
        await userCollection.doc(username).collection("Usuarios").get();

    return _userListFromSnapshot(snapshot);
  }

  /*Stream get stream {
    return userCollection
        .doc(username)
        .collection("Users")
        .snapshots()
        .map(_userListFromSnapshot);
  }*/
  final CollectionReference matchCollection =
      FirebaseFirestore.instance.collection("Matches");

  //MATCHES
  Future<int> insertMatch(Partida match) async {
    DocumentReference ref = await matchCollection.add({
      "email": match.email,
      "size": match.size,
      "date": match.date,
      "duration": match.duration,
      "win": match.win,
    });
    try {
      if (match.size != "") {
        await matchCollection
            .doc(username)
            .collection("Matches")
            .doc(ref.id)
            .update({
          "email": match.email,
          "size": match.size,
          "date": match.date,
          "duration": match.duration,
          "win": match.win
        });
      }
    } catch (e) {
      print('Erro: $e');
    }

    return 0;
  }

  Future<int> updateMatch(email, Partida match) async {
    await matchCollection
        .doc(username)
        .collection("Matches")
        .doc(email)
        .update({
      "email": match.email,
      "size": match.size,
      "date": match.date,
      "duration": match.duration,
      "win": match.win
    });
    return 0;
  }

  /* --> não permitir deletar partida?

  Future<int> deleteMatch(email) async {
    await matchCollection
        .doc(username)
        .collection("Matches")
        .doc(email)
        .delete();
    return 0;
  }
  */

  /*Stream get stream {
    return matchCollection
        .doc(username)
        .collection("Matches")
        .snapshots()
        .map(_matchListFromSnapshot);
  }*/
}
