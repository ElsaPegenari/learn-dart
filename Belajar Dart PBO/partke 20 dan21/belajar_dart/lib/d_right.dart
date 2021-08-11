//// Right
class User{
  // user related things
}

class UserManager{
  final IDatastorage iDatastorage;

  UserManager(this.iDatastorage);

  void saveUserData(User user){
    iDatastorage.saveData(user);
  }
}

abstract class IDatastorage{
  void saveData(User user);
}

class FirebaseStorage implements IDatastorage{
  @override
  void saveData(User user) {
    // connect to firebase
    // save data
  }

}

class LocalStorage implements IDatastorage{
  @override
  void saveData(User user) {
    // connect to local storage
    // save data
  }

}