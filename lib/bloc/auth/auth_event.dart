import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AuthEvent extends Equatable {
  AuthEvent([List props = const []]) : super(props);
}

class DoLogin extends AuthEvent {
  String email, password;
  DoLogin({this.email, this.password}) : super([email, password]);
  
}
