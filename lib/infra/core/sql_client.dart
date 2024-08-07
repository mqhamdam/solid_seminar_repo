import 'i_db_client.dart';

class SQLClient extends IDBClient {
  final dynamic _dbClient;

  SQLClient(this._dbClient);

  @override
  Future<void> close() async {
    print('Closing SQL connection');
  }

  @override
  Future<void> connect() async {
    print('Connecting to SQL database');
  }

  @override
  Future get dbClient async {
    print('Getting NoSQL instance');
    /* Checking connecting */
    await connect();
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      print('Checking connection...');
      break;
    }
    return _dbClient;
  }
}
