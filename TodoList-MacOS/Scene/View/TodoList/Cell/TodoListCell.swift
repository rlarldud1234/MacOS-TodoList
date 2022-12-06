import SwiftUI

struct TodoListCell: View {
    let todo: TodoEntity
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(todo.title)
                    .font(.system(size: 15, weight: .medium))
                Text(todo.createAt.toString())
                    .font(.system(size: 10, weight: .regular))
            }
            Spacer()
        }
        .frame(width: 200)
        .padding([.vertical, .leading], 5)
        .overlay {
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.gray)
        }
    }
}

struct TodoListCell_Previews: PreviewProvider {
    static var previews: some View {
        TodoListCell(todo: .init(
            id: "0",
            title: "안녕",
            content: "반가워요",
            createAt: Date()
        ))
    }
}
