```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Safe access to nested fields
      final nestedValue = jsonData['nested']?['value'];

      //Check for null before using
      if(nestedValue != null){
        print('Nested value: $nestedValue');
      } else {
        print('Nested field or value is missing');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception for handling further up
  }
}
```