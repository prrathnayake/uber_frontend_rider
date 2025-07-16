import 'package:flutter/material.dart';
import '../utilities/country_codes.dart';

class GetMobileScreen extends StatefulWidget {
  const GetMobileScreen({super.key});

  @override
  State<GetMobileScreen> createState() => _GetMobileScreenState();
}

class _GetMobileScreenState extends State<GetMobileScreen> {
  final TextEditingController _phoneController = TextEditingController();
  String _selectedCountryCode = '+61'; // Default: Australia

  void _submitPhoneNumber() {
    final number = _phoneController.text.trim();
    if (number.isEmpty || number.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a valid number")),
      );
      return;
    }

    final fullNumber = '$_selectedCountryCode $number';
    print("Phone: $fullNumber");

    // Proceed with OTP or next screen logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter Phone Number"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushReplacementNamed(context, '/intro'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choose your country code",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: _selectedCountryCode,
              dropdownColor: Colors.grey[900], // Dropdown background
              style: const TextStyle(
                color: Colors.white,
              ), // Dropdown item text color
              iconEnabledColor: Colors.white, // Arrow icon color
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[850], // Background of the text field
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
              items: allCountries.map((country) {
                return DropdownMenuItem<String>(
                  value: country.code,
                  child: Text(
                    '${country.flag} ${country.name} (${country.code})',
                  ),
                );
              }).toList(),
              onChanged: (val) {
                if (val != null) setState(() => _selectedCountryCode = val);
              },
            ),

            const SizedBox(height: 24),
            const Text(
              "Enter mobile number",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              style: const TextStyle(color: Colors.white), // 🔹 Text color
              decoration: InputDecoration(
                hintText: "Enter phone number",
                hintStyle: const TextStyle(
                  color: Colors.white70,
                ), // 🔹 Hint text color
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white24),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                fillColor: Colors.grey[850], // 🔹 Background color
                filled: true,
                prefixIcon: const Icon(Icons.phone, color: Colors.white),
              ),
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _submitPhoneNumber,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("Continue", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
