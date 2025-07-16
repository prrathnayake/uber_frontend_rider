class Country {
  final String name;
  final String code;
  final String flag;

  const Country({required this.name, required this.code, required this.flag});
}

const List<Country> allCountries = [
  Country(name: 'Afghanistan', code: '+93', flag: '🇦🇫'),
  Country(name: 'Albania', code: '+355', flag: '🇦🇱'),
  Country(name: 'Algeria', code: '+213', flag: '🇩🇿'),
  Country(name: 'Australia', code: '+61', flag: '🇦🇺'),
  Country(name: 'Bangladesh', code: '+880', flag: '🇧🇩'),
  Country(name: 'Brazil', code: '+55', flag: '🇧🇷'),
  Country(name: 'Canada', code: '+1', flag: '🇨🇦'),
  Country(name: 'China', code: '+86', flag: '🇨🇳'),
  Country(name: 'France', code: '+33', flag: '🇫🇷'),
  Country(name: 'Germany', code: '+49', flag: '🇩🇪'),
  Country(name: 'India', code: '+91', flag: '🇮🇳'),
  Country(name: 'Japan', code: '+81', flag: '🇯🇵'),
  Country(name: 'New Zealand', code: '+64', flag: '🇳🇿'),
  Country(name: 'Pakistan', code: '+92', flag: '🇵🇰'),
  Country(name: 'Russia', code: '+7', flag: '🇷🇺'),
  Country(name: 'Sri Lanka', code: '+94', flag: '🇱🇰'),
  Country(name: 'United Arab Emirates', code: '+971', flag: '🇦🇪'),
  Country(name: 'United Kingdom', code: '+44', flag: '🇬🇧'),
  Country(name: 'United States', code: '+1', flag: '🇺🇸'),
  // Add more countries as needed...
];