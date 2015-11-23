import Foundation

class Photo {
    var photoId: Int
    var name: String
    var photoURL: String?
    var photoDescription: String?
    var width: Int?
    var height: Int?
    
    convenience init(let photoId: Int, let name: String) {
        self.init(photoId: photoId, name: name, photoURL: "http://", photoDescription: "", width: 0, height: 0)
    }
    
    init(photoId: Int, name: String, photoURL: String, photoDescription: String, width: Int, height: Int) {
        self.photoId = photoId
        self.name = name
        self.photoURL = photoURL
        self.photoDescription = photoDescription
        self.width = width
        self.height = height
    }
}