import 'package:either_dart/either.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:flutter_clean_architecture/features/joke/domain/entities/joke_entity.dart';
import 'package:flutter_clean_architecture/features/joke/domain/repositories/joke_repository.dart';

class GetRandomJokeUsecase {
  final JokeRepository repository;

  GetRandomJokeUsecase(this.repository);

  Future<Either<Failure, JokeEntity>> execute() async {
    return await repository.getRandomJoke();
  }
}
