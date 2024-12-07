import 'package:dartz/dartz.dart';
import 'package:unit_testing/features/number_trivia/core/failure.dart';
import 'package:unit_testing/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
 Future<Either<Failure, NumberTrivia>> getConcreateNumberTrivia(int number);
 Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}