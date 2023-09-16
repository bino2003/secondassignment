 enum TypePost {image,text}
class PostModel{
  String? username;
  String? image;
  String? post;
  PostModel(this.image,this.post,this.username);
  PostModel.frommap(Map map){
    this.username=map["username"];
    this.post=map["post"];
    this.image=map["image"];

  }
}