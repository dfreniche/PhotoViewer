import Foundation

public class PhotoList: CollectionProtocol {

    var list: [Photo]? = []
    
    public func count() -> Int {
        if let list = self.list {
            return list.count
        } else {
            return 0
        }
    }
    
    public func add(element: Photo) {
        self.list?.append(element)
    }
    
    public func elementAt(position: Int) -> Photo? {
        if let list = self.list {
            return list[position]
        } else {
            return nil
        }
    }
    
    public func getAll() -> [Photo] {
        return self.list!
    }
}