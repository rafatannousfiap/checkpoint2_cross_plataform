import 'package:flutter/material.dart';
import 'package:githubrepo/constants/theme.dart';
import 'package:githubrepo/screens/repo_detail_screen.dart';

void main() {
  runApp(const GitHubRepoApp());
}

class GitHubRepoApp extends StatelessWidget {
  const GitHubRepoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => 'GitHub Repo',
      debugShowCheckedModeBanner: false,
      theme: themeLight,
      darkTheme: themeDark,
      home: const RepoDetailScreen(),
    );
  }
}
