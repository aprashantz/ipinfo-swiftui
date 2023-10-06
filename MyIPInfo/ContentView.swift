import SwiftUI

struct ContentView: View {
    @State var ipData: IPInfoModel?
    @State var errorFetchingData = false;
    @State public var errorMessage = "Err"
    
    var body: some View {
        ZStack{
            BackgroundView()
            Group{
                if errorFetchingData {
                    ErrorLoadingDataView(errorMessage: $errorMessage)
                } else if ipData == nil {
                    DataLoadingView()
                } else {
                    DataLoadedView(ipData: $ipData)
                }
            }
        }
        
        .onAppear{
            MyIPData.getIPData{result in
                switch result {
                case .success(let data):
                    ipData = data
                case .failure(let error):
                    errorMessage = error.localizedDescription
                    errorFetchingData = true
                }
                
            }
            
        }
    }
}



#Preview {
    ContentView()
}
