class Library{
  List<Map<String, dynamic>> books=[];
  
  addBook(var title, String author, int year){
    books.add({'title':title, 'author':author,'year':year});
  }

  printBooks(){
    for(var book in books){
        print('Title: ${book['title']}, Author: ${book['author']}, Year: ${book['year']}');
    }
  }
}

void main(){
  Library l=Library();

  l.addBook(1984, 'George Orwell', 1949);
  l.addBook('To Kill a Mockingbird', 'Harper Lee', 1960);

  l.printBooks();

}