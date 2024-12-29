```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic>? data = jsonDecode(response.body);
      if(data != null && data.length > 10 && data[10] is Map && data[10].containsKey('name')) {
        final String? value = data[10]['name'];
        print(value);
      } else {
        print('Data not found or improperly formatted.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```