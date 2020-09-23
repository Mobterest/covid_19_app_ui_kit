import './constants.dart';
import './colors.dart';
import '../utils/dataModel.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const String IMAGE_1 = 'assets/image_1.png';
const String IMAGE_2 = 'assets/image_2.png';
const String IMAGE_3 = 'assets/image_3.png';
const String IMAGE_4 = 'assets/covid.png';
const String AVATAR = 'assets/avatar.png';
const List<Map<String, dynamic>> CASE_TYPES = [
  {
    'value': CASE_TYPE_1,
    'color': ORANGE_PALETTE,
  },
  {
    'value': CASE_TYPE_2,
    'color': RED_PALETTE,
  },
  {
    'value': CASE_TYPE_3,
    'color': TURQUOISE_PALETTE,
  },
  {
    'value': CASE_TYPE_4,
    'color': BLUE_PALETTE,
  }
];
List<Marker> defaultMarkers = [
  Marker(
      markerId: MarkerId('1'),
      draggable: false,
      position: LatLng(44.500000, -89.500000)),
  Marker(
      markerId: MarkerId('2'),
      draggable: false,
      position: LatLng(39.000000, -80.500000)),
  Marker(
      markerId: MarkerId('3'),
      draggable: false,
      position: LatLng(44.000000, -72.699997)),
  Marker(
      markerId: MarkerId('4'),
      draggable: false,
      position: LatLng(31.000000, -100.000000)),
  Marker(
      markerId: MarkerId('5'),
      draggable: false,
      position: LatLng(44.500000, -100.000000))
];
List<Map<String, dynamic>> searchCountries = [
  {
    'cases': '164280',
    'country': 'United States',
    'code': 'US',
    'time': TIME_AGO
  },
  {'cases': '101739', 'country': 'Italy', 'code': 'IT', 'time': TIME_AGO},
  {'cases': '87956', 'country': 'Spain', 'code': 'ES', 'time': TIME_AGO},
  {'cases': '81520', 'country': 'China', 'code': 'CN', 'time': TIME_AGO}
];
List<Marker> searchMarkers = [
  Marker(
      markerId: MarkerId('1'),
      draggable: false,
      position: LatLng(41.700001,	-71.500000)),
  Marker(
      markerId: MarkerId('2'),
      draggable: false,
      position: LatLng(44.000000,	-120.500000)),
  Marker(
      markerId: MarkerId('3'),
      draggable: false,
      position: LatLng(43.000000,	-75.000000)),
  Marker(
      markerId: MarkerId('4'),
      draggable: false,
      position: LatLng(	44.000000,	-71.500000)),
  Marker(
      markerId: MarkerId('5'),
      draggable: false,
      position: LatLng(41.500000,	-100.000000))
];
List<Marker> sortMarkers = [
  Marker(
      markerId: MarkerId('1'),
      draggable: false,
      position: LatLng(38.500000,	-98.000000)),
  Marker(
      markerId: MarkerId('2'),
      draggable: false,
      position: LatLng(33.000000,	-90.000000)),
  Marker(
      markerId: MarkerId('3'),
      draggable: false,
      position: LatLng(	40.000000,	-89.000000)),
  Marker(
      markerId: MarkerId('4'),
      draggable: false,
      position: LatLng(	39.000000	, -75.500000)),
  Marker(
      markerId: MarkerId('5'),
      draggable: false,
      position: LatLng(	41.599998,	-72.699997))
];
const String PLUS = '+';
const String PERCENT = '%';
List<Map<String, dynamic>> coronaAffectedCountries = [
  {
    'total_cases': [
      DataModel(0, 100000),
      DataModel(1, 500000),
      DataModel(2, 250000),
      DataModel(3, 400000)
    ],
    'deaths': [
      DataModel(0, 10000),
      DataModel(1, 12000),
      DataModel(2, 20000),
      DataModel(3, 100000)
    ],
    'recoveries': [
      DataModel(0, 900000),
      DataModel(1, 60000),
      DataModel(2, 150000),
      DataModel(3, 520000)
    ],
    'active_cases': [
      DataModel(0, 140000),
      DataModel(1, 250000),
      DataModel(2, 140000),
      DataModel(3, 40000)
    ]
  },
  {
    'flag': 'us',
    'country': 'United States',
    'time': 'Updated 8 minutes ago',
    'total_cases': [
      DataModel(0, 1000),
      DataModel(1, 1200),
      DataModel(2, 2500),
      DataModel(3, 4000)
    ],
    'deaths': [
      DataModel(0, 10),
      DataModel(1, 200),
      DataModel(2, 170),
      DataModel(3, 50)
    ],
    'recoveries': [
      DataModel(0, 500),
      DataModel(1, 100),
      DataModel(2, 800),
      DataModel(3, 500)
    ],
    'active_cases': [
      DataModel(0, 490),
      DataModel(1, 900),
      DataModel(2, 1000),
      DataModel(3, 3000)
    ],
    'bar': [
      DataModel1('Jan', 20000),
      DataModel1('Feb', 100000),
      DataModel1('Mar', 50000),
      DataModel1('Apr', 500000),
      DataModel1('May', 110000),
      DataModel1('Jun', 250000),
      DataModel1('Jul', 400000),
      DataModel1('Aug', 500000),
      DataModel1('Sep', 900000),
      DataModel1('Oct', 1000000),
      DataModel1('Nov', 1500000),
    ]
  },
  {
    'flag': 'it',
    'country': 'Italy',
    'time': 'Updated 12 minutes ago',
    'total_cases': [
      DataModel(0, 900),
      DataModel(1, 1100),
      DataModel(2, 2400),
      DataModel(3, 3900)
    ],
    'deaths': [
      DataModel(0, 5),
      DataModel(1, 195),
      DataModel(2, 165),
      DataModel(3, 45)
    ],
    'recoveries': [
      DataModel(0, 400),
      DataModel(1, 0),
      DataModel(2, 700),
      DataModel(3, 400)
    ],
    'active_cases': [
      DataModel(0, 400),
      DataModel(1, 810),
      DataModel(2, 910),
      DataModel(3, 2910)
    ],
    'bar': [
      DataModel1('Jan', 20000),
      DataModel1('Feb', 100000),
      DataModel1('Mar', 50000),
      DataModel1('Apr', 500000),
      DataModel1('May', 110000),
      DataModel1('Jun', 250000),
      DataModel1('Jul', 400000),
      DataModel1('Aug', 500000),
      DataModel1('Sep', 900000),
      DataModel1('Oct', 1000000),
      DataModel1('Nov', 1500000),
    ]
  },
  {
    'flag': 'es',
    'country': 'Spain',
    'time': 'Updated 16 minutes ago',
    'total_cases': [
      DataModel(0, 500),
      DataModel(1, 700),
      DataModel(2, 2000),
      DataModel(3, 3500)
    ],
    'deaths': [
      DataModel(0, 0),
      DataModel(1, 100),
      DataModel(2, 70),
      DataModel(3, 0)
    ],
    'recoveries': [
      DataModel(0, 420),
      DataModel(1, 20),
      DataModel(2, 720),
      DataModel(3, 420)
    ],
    'active_cases': [
      DataModel(0, 400),
      DataModel(1, 800),
      DataModel(2, 700),
      DataModel(3, 2500)
    ],
    'bar': [
      DataModel1('Jan', 20000),
      DataModel1('Feb', 100000),
      DataModel1('Mar', 50000),
      DataModel1('Apr', 500000),
      DataModel1('May', 110000),
      DataModel1('Jun', 250000),
      DataModel1('Jul', 400000),
      DataModel1('Aug', 500000),
      DataModel1('Sep', 900000),
      DataModel1('Oct', 1000000),
      DataModel1('Nov', 1500000),
    ]
  },
  {
    'flag': 'cn',
    'country': 'China',
    'time': 'Updated 46 minutes ago',
    'total_cases': [
      DataModel(0, 2000),
      DataModel(1, 2200),
      DataModel(2, 7000),
      DataModel(3, 5000)
    ],
    'deaths': [
      DataModel(0, 1000),
      DataModel(1, 1500),
      DataModel(2, 3000),
      DataModel(3, 1400)
    ],
    'recoveries': [
      DataModel(0, 700),
      DataModel(1, 600),
      DataModel(2, 200),
      DataModel(3, 400)
    ],
    'active_cases': [
      DataModel(0, 300),
      DataModel(1, 100),
      DataModel(2, 550),
      DataModel(3, 100)
    ],
    'bar': [
      DataModel1('Jan', 20000),
      DataModel1('Feb', 100000),
      DataModel1('Mar', 50000),
      DataModel1('Apr', 500000),
      DataModel1('May', 110000),
      DataModel1('Jun', 250000),
      DataModel1('Jul', 400000),
      DataModel1('Aug', 500000),
      DataModel1('Sep', 900000),
      DataModel1('Oct', 1000000),
      DataModel1('Nov', 1500000),
    ]
  },
  {
    'flag': 'de',
    'country': 'Germany',
    'time': 'Updated 11 minutes ago',
    'total_cases': [
      DataModel(0, 2200),
      DataModel(1, 4000),
      DataModel(2, 6000),
      DataModel(3, 2000)
    ],
    'deaths': [
      DataModel(0, 100),
      DataModel(1, 2000),
      DataModel(2, 1700),
      DataModel(3, 500)
    ],
    'recoveries': [
      DataModel(0, 50),
      DataModel(1, 10),
      DataModel(2, 80),
      DataModel(3, 50)
    ],
    'active_cases': [
      DataModel(0, 491),
      DataModel(1, 901),
      DataModel(2, 1001),
      DataModel(3, 3001)
    ],
    'bar': [
      DataModel1('Jan', 20000),
      DataModel1('Feb', 100000),
      DataModel1('Mar', 50000),
      DataModel1('Apr', 500000),
      DataModel1('May', 110000),
      DataModel1('Jun', 250000),
      DataModel1('Jul', 400000),
      DataModel1('Aug', 500000),
      DataModel1('Sep', 900000),
      DataModel1('Oct', 1000000),
      DataModel1('Nov', 1500000),
    ]
  }
];
const String LAUNCH_CALL = "tel://111";
const String EMAIL_TO = 'dummy@gmail.com';
const String EMAIL_SUBJECT = 'Contact Us';
