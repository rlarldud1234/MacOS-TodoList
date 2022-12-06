import Foundation

class AddTodoViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var content: String = ""

    let localDataSource = LocalDataSource.shared

    func addTodo() {
        localDataSource.registerTodo(title: title, content: content)
        title = ""
        content = ""
    }
}
