import SwiftUI

struct AddTodoView: View {
    @StateObject var viewModel = AddTodoViewModel()

    var body: some View {
        VStack {
            TextField("제목을 입력해주세요.", text: $viewModel.title)
                .padding(.leading, 15)
                .frame(height: 43)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color.gray)
                }
                .textFieldStyle(.plain)

            TextEditor(text: $viewModel.content)
                .padding(15)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color.gray)
                }
                .textFieldStyle(.plain)

            Button {
                viewModel.addTodo()
            } label: {
                Text("추가하기")
                    .font(.system(size: 35, weight: .medium))
            }
            .buttonStyle(.plain)

        }
        .padding(30)
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
