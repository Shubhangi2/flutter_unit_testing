import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:unit_testing/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:unit_testing/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}


void main(){
  late MockNumberTriviaRepository mockNumberTriviaRepository;
  late GetConcreteNumberTrivia usecase;
    setUp(
        (){
           mockNumberTriviaRepository = MockNumberTriviaRepository();
           usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);        
        }
    );

    final tNumber =1;
    NumberTrivia tNumberTrivia = NumberTrivia(text: "trivia text", number: 1);

    test('should get trivia for number from repository', () async{
      //arrange
      when(mockNumberTriviaRepository.getConcreateNumberTrivia(any<int>())).thenAnswer((_) async => Right(tNumberTrivia));
      //act

      //assert
    });
}
