class User {
  final int id;
  final String username;
  final String password;

  User(this.id, this.username, this.password);

  // Encription
  encrypt(pass) {
    return password + 'abc';
  }

  decrypt(pass) {
    return pass.substring(0, pass.length - 3);
  }

  bool login() {
    if (_users[0].username == this.username &&
        _users[0].password == this.password) {
      return true;
    }
    return false;
  }
}

List<User> _users = [
  User(1, "sknneu", "sknneu"),
];
