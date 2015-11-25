import Foundation

public class Photo {
    public var photoId: Int
    public var name: String
    public var photoURL: String?
    public var photoDescription: String?
    public var width: Int?
    public var height: Int?
    
    public convenience init(let photoId: Int, let name: String) {
        self.init(photoId: photoId, name: name, photoURL: "http://", photoDescription: "", width: 0, height: 0)
    }
    
    public init(photoId: Int, name: String, photoURL: String, photoDescription: String, width: Int, height: Int) {
        self.photoId = photoId
        self.name = name
        self.photoURL = photoURL
        self.photoDescription = photoDescription
        self.width = width
        self.height = height
    }
}