import Foundation

import Boutique

final class LocalDataSource {

    static let shared = LocalDataSource()

    let store = Store<TodoEntity>(
        storage: SQLiteStorageEngine(directory: .defaultStorageDirectory(appendingPath: "Todo"))!,
        cacheIdentifier: \.id
    )

    func registerTodo(title: String, content: String) {
        Task {
            let id = await String((Int(self.store.items.last?.id ?? "0") ?? 0) + 1)
            let todo = TodoEntity(id: id, title: title, content: content, createAt: Date())
            try await self.store.insert(todo)
        }
    }

    func fetchTodoList() async -> [TodoEntity] {
        let todoList = await store.items
        return todoList
    }

    func fetchTodoById(id: String) async -> TodoEntity {
        let todo = await store.items.filter { $0.id == id }
        return todo[0]
    }
}
