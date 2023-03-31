import '../../util/utilities.dart';
import '../core/dio_client.dart';
import '../model/book_model.dart';

class BookRepo {
  final DioClient dioClient;
  BookRepo(this.dioClient);

  Future getBook({String isbn = '9780131495050'}) async {
    try {
      final response = await dioClient.get(
        AppConstants.bookUri + isbn,
      );

      BookModel result = BookModel.fromJson(response);
      return result;
    } catch (e) {
      return e;
    }
  }
}
