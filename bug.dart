```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Accessing a nested field that might be missing
      final nestedValue = jsonData['nested']['value']; 
      print('Nested value: $nestedValue');
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    //Important: Re-throw the exception to be handled further up the call stack if necessary.
    rethrow;
  }
}
```