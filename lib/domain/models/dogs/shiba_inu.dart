import '../../core/i_entities/i_dog_entity.dart';
import '../../core/interfaces/i_soundable.dart';

class ShibaInu extends Dog implements ISoundable {
  /* 
  
  */
  ShibaInu({
    required final String keyID,
  }) : super('Shiba Inu', keyID: keyID);

  @override
  void sound() {
    print('Shiba Inu is making sound');
  }
}
