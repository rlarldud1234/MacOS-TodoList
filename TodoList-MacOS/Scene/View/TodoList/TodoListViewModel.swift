import Foundation

class TodoListViewModel: ObservableObject {
    @Published var todoList: [TodoEntity] = []

    private let localDataSource = LocalDataSource.shared

    func fetchTodoList() {
        Task {
            let list = await localDataSource.fetchTodoList()
            DispatchQueue.main.async {
                self.todoList = list
            }
        }
    }
}
