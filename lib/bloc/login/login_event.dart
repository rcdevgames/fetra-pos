import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  LoginEvent([List props = const []]) : super(); 
}

class DoLogin extends LoginEvent {
  final String email;
  final String password;

  DoLogin({
    @required this.email,
    @required this.password
  }) : super([email, password]);

  @override
  String toString() => "Do Login Event";

  @override
  // TODO: implement props
  List<Object> get props => null;

}