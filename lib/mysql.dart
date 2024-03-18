import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host='yulhagolf.mycafe24.com',user = 'yulhagolf',password='EunWoo0211',db='yulhagolf';
  static int port = 3306;

  Mysql();
  Future<MySqlConnection> getConnection() async{
    var settings = new ConnectionSettings(host: host,port: port,user:user,password: password,db:db);
    return await MySqlConnection.connect(settings);
  }
}