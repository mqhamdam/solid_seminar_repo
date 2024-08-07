import '../i_entity.dart';

abstract class Bird extends IEntity {
  String birdName;

  Bird(
    this.birdName, {
    required final String keyID,
  }) : super(keyID);
}
