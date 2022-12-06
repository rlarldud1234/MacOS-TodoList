import Foundation

class DetailTodoViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var content: String = ""

    private let localDataSource = LocalDataSource.shared

    func fetchTodoById(id: String) {
        Task {
            let todo = await localDataSource.fetchTodoById(id: id)
            DispatchQueue.main.async {
                self.title = todo.title
                self.content = todo.content
            }
        }
    }
}
