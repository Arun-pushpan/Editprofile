import 'package:equatable/equatable.dart';

class RegisterState extends Equatable {
  @override
  List<Object> get props => [];
}

class RegisterLoading extends RegisterState {}

class RegisterFailure extends RegisterState {
  late final String error;

  RegisterFailure({required this.error});

  @override
  List<Object> get props => [error];
}