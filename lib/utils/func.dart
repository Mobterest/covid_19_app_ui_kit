import 'package:intl/intl.dart';
import '../globals/constants.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../globals/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import '../globals/config.dart';

class Func {
  Func();

  numberFormat(amount) {
    final formatter = new NumberFormat("#,###");
    return formatter.format(amount);
  }

  generateCaseType(type){
    String setType = '';
     switch(type) { 
      case CASE_TYPE_1: {  setType = 'total_cases'; } 
      break; 
     
      case CASE_TYPE_2: { setType = 'deaths'; } 
      break; 
     
      case CASE_TYPE_3: {  setType = 'recoveries'; } 
      break; 
     
      case CASE_TYPE_4: {  setType = 'active_cases'; } 
      break; 
     
      default: { setType = 'total_cases'; } 
      break; 
   }

   return setType;
  }

    generateCaseColor(type){
     switch(type) { 
      case CASE_TYPE_1: {  return charts.Color.fromHex(code: ORANGE_PALETTE_HEX); } 
      break; 
     
      case CASE_TYPE_2: { return charts.Color.fromHex(code: RED_PALETTE_HEX); } 
      break; 
     
      case CASE_TYPE_3: {  return charts.Color.fromHex(code: TURQUOISE_PALETTE_HEX); } 
      break; 
     
      case CASE_TYPE_4: {  return charts.Color.fromHex(code: BLUE_PALETTE_HEX);} 
      break; 
     
      default: { return charts.Color.fromHex(code: ORANGE_PALETTE_HEX); } 
      break; 
   }
  }

launchURL() async {
      var url = 'mailto:' + EMAIL_TO + '?subject=' + EMAIL_SUBJECT;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw FAILED_LAUNCH  + ' $url';
      
    }
  }

}
