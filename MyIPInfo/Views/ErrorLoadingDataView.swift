import Foundation
import SwiftUI


struct ErrorLoadingDataView: View {
   @Binding var errorMessage: String
    
    var body: some View{
        Text(errorMessage).font(.system(size: 30))
    }
}

#Preview{
    ErrorLoadingDataView(errorMessage: ContentView().$errorMessage)
}
