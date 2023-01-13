class LoginResponse {
  final String token;
  final String refreshToken;

  LoginResponse({required this.token, required this.refreshToken});

  LoginResponse.fromJson(Map<String, dynamic> json)
      : token = json['token'],
        refreshToken = json['refreshToken'];

  Map<String, dynamic> toJson() => {
        'token': token,
        'refreshToken': refreshToken,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginResponse &&
          runtimeType == other.runtimeType &&
          token == other.token &&
          refreshToken == other.refreshToken;

  @override
  int get hashCode => token.hashCode ^ refreshToken.hashCode;

  @override
  String toString() {
    return 'LoginResponse{'
        '\ntoken: $token, '
        '\nrefreshToken: $refreshToken}';
  }
}
