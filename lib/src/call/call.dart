import 'dart:html';
import 'dart:math';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'call_service.dart';

@Component(
  selector: 'call-name',
  templateUrl: 'call.html',
  styleUrls: ['call.css'],
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,],
  providers: [ClassProvider(CallService)],
)
class CallComponent{
  final CallService callService;
  String text="";

  CallComponent(this.callService);

  List<String> scrabbleLetters = ['1','2','3','4','5','6','7','8','9','10'];

  void random() {
    Random indexGenerator = new Random();
    int NameIndex = indexGenerator.nextInt(10);
    text = scrabbleLetters[NameIndex];
  }

}