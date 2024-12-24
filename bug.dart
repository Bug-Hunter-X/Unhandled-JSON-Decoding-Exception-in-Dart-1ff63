```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Use the data
      print(jsonData);
    } else {
      // Handle the error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the network request
    print('Error: $e');
    // Re-throw the exception for higher-level handling if necessary
    rethrow;
  }
}
```