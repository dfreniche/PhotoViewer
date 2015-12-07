import Foundation

public class APIWrapper500pxMock: APIWrapper500pxProtocol {
    
    let perretePhotos = [
        "https://lh3.googleusercontent.com/OvaYGQbnmRIhW53aplLorq_QuxoB_MaUriX1lHhEMH36QGKlkKu34iqWxvIVLWBA8YYUmHGggFvsEyiJOtsgNQ",
        "https://lh3.googleusercontent.com/TbHytlPDOsjL5ffXQlYqDUpgnN1fYyEk-NNJqVq86uXK8rGD7_HhnaInBczpWwH5v_e4BxRbrYIY51Uvk3rzGA=s400",
        "https://lh3.ggpht.com/KWH-9MnQWsKwIWIolXcoCe5JiMXHvV8w_3J91FSBSp4uSThh5RvkOuG7MjfBH9np_IQ=w300"
    ]
    
    public init() {
        
    }
    
    public func popularPhotos(consumerKey: String) -> PhotoList {
        let photoList = PhotoList()

        for i in 0 ..< 200 {
            let photo = Photo(photoId: i, name: "Photo \( i )")
            let r = rand()
            let idx = Int( r % Int32(perretePhotos.count))
            
            photo.photoURL = perretePhotos[idx]
            photoList.add(photo)
        }
        
        return photoList
    }
}