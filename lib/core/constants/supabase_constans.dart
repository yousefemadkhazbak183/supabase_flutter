import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SupabaseConstans {
  static const String supabaseUrl = "https://jmitjrlooamjxmeckgur.supabase.co";
  static const String supabaseAnonKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImptaXRqcmxvb2FtanhtZWNrZ3VyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjUzNzQxMDUsImV4cCI6MjA4MDk1MDEwNX0.0UGTa45GBNls43WFVfnxqF9C9cXwoO8wGneNDCJSGEs";

  static Future init() async {
    await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
  }
}
