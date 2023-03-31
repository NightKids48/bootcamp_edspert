import '../../util/utilities.dart';
import '../core/dio_client.dart';
import '../model/book_search_model.dart';

class SearchRepo {
  final DioClient dioClient;
  SearchRepo(this.dioClient);

  Future searchBook(String keyword) async {
    try {
      final response = await dioClient.get(
        AppConstants.searchUri + keyword,
      );
      SearchBookModel result = SearchBookModel.fromJson(response);
      return result;
    } catch (e) {
      return e;
    }
  }
}
