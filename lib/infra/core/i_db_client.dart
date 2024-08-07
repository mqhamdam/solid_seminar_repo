abstract class IDBClient {
  Future<void> connect();

  /* get instance */
  Future get dbClient;

  /* close connection */
  Future<void> close();
}
