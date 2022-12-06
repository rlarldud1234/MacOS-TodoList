import SwiftUI

struct DetailTodoView: View {
    @StateObject var viewModel = DetailTodoViewModel()
    var id: String = ""

    var body: some View {
        VStack {
            Text(viewModel.title)
            Text(viewModel.content)
        }
        .onAppear { viewModel.fetchTodoById(id: id) }
    }
}

struct DetailTodoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTodoView()
    }
}
