import Foundation

public class APIWrapper500pxMock: APIWrapper500pxProtocol {
    public init() {
        
    }
    
    public func popularPhotos(consumerKey: String) -> PhotoList {
        let photoList = PhotoList()

        for i in 0 ..< 20 {
            let photo = Photo(photoId: i, name: "Photo \( i )")
            
            photoList.add(photo)
        }
        
        return photoList
    }
}