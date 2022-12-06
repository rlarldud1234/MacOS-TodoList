import SwiftUI

struct TodoListView: View {
    @StateObject var viewModel = TodoListViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.todoList, id: \.id) { todo in
                NavigationLink(destination: DetailTodoView(id: todo.id)) {
                    TodoListCell(todo: todo)
                }
            }
            .listStyle(.inset)
            .onAppear(perform: viewModel.fetchTodoList)
            .frame(minWidth: 240)
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
