import SwiftUI

struct SideBar: View {
    var body: some View {
        List {
            Text("Todo")
                .font(.system(size: 15, weight: .medium))
                .padding(.bottom, 15)
            NavigationLink(destination: TodoListView()) {
                Label("목록", systemImage: "list.bullet")
                    .font(.system(size: 12))
            }
            NavigationLink(destination: AddTodoView()) {
                Label("추가", systemImage: "plus")
                    .font(.system(size: 12))
            }
        }
        .listStyle(.sidebar)
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
