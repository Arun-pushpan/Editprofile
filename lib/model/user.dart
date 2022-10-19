class User{
  final String name;
  final String email;
  final String  phone_no;
  final String password;
  final String confirm_password;
  User({required this.name,required this.email,required this.phone_no,required this.password,
  required this.confirm_password});
  @override
  String toString()=> 'User{name:$name,email:$email,phone_no:$phone_no,password:$password,confirmpassword:$confirm_password}';
}