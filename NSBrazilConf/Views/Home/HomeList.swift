
import SwiftUI

struct HomeList: View {
    var feedViewModel: FeedViewModel

    @State var showContent = false
    
    var body: some View {
        ScrollView {
            HeaderView().frame(height: 100)
            VStack(alignment: .leading ,spacing: 15) {
                ForEach(0..<feedViewModel.homeFeed.count) { feedIndex in
                    FeedBuilder.view(for: self.feedViewModel.homeFeed[feedIndex])
                }
            }
            .padding(.bottom, 200)
        }
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        HomeList(feedViewModel: FeedViewModel())
    }
}
