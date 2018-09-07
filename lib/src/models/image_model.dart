// Import Dependencies flutter library

// Import Developer Libraries


// https://jsonplaceholder.typicode.com/photos
// model data
class ImageModel{
  int id;
  String url;
  String title;
  // CORE CONSTRUCTOR
  ImageModel({this.id, this.url, this.title});
  // NAMED CONSTRUCTOR
  ImageModel.fromJson(Map<String, dynamic>data){
    id = data['id'];
    url = data['url'];
    title = data['title'];
  }
  /* SHORT FORM
  ImageModel.fromJson(Map<String, dynamic>data)
    : id = data['id'],
      url = data['url'],
      title = data['title'];
  }
   */

}