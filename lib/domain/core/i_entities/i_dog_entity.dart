import "../i_entity.dart";

abstract class Dog extends IEntity {
  String dogName;

  Dog(
    this.dogName, {
    required final String keyID,
  }) : super(keyID);
}
