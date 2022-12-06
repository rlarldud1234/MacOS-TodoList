import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            SideBar()
            Text("Todo 앱입니다.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
