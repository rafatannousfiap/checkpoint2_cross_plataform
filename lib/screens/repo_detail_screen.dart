import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/constants/typography.dart';
import 'package:githubrepo/mocks/repositories_mock.dart';
import 'package:githubrepo/models/repository.dart';

class RepoDetailScreen extends StatefulWidget {
  const RepoDetailScreen({super.key});

  @override
  State<RepoDetailScreen> createState() => _RepoDetailScreenState();
}

class _RepoDetailScreenState extends State<RepoDetailScreen> {
  List<Repository> listRepository = kRepositoriesMock;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Detalhes',
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              CustomAvatar(
                avatarUrl: listRepository[0].owner?.avatar,
                radius: 60,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomText(
                text: 'Repositório', 
                style: TypographyType.title,
              ),
              CustomText(
                text: '${listRepository[0].name}', 
                style: TypographyType.body,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomText(
                text: 'Usuário', 
                style: TypographyType.title,
              ),
              CustomText(
                text: '${listRepository[0].owner?.login}', 
                style: TypographyType.body,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomText(
                text: 'Descrição', 
                style: TypographyType.title,
              ),
              CustomText(
                text: '${listRepository[0].description}', 
                style: TypographyType.body,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}