import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}


enum TabbedItems: Int, CaseIterable{
    case home = 0
    case favorite
   
    
    var title: String{
        switch self {
        case .home:
            return "About"
        case .favorite:
            return "Work"
       
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "person"
        case .favorite:
            return "hand.draw"
       
        }
    }
}
