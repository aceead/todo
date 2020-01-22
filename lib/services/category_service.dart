import '../models/category.dart';
import '../repositories/repository.dart';

class CategoryService{

  Repository _repository;
  CategoryService(){
    _repository = Repository();
  }
  saveCategory(Category category) async{
    return await _repository.save('categories', category.categoryMap());
    //print(category.name);
  }
}