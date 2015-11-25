import XCTest
import PhotoViewer

class APIWrapper500pxTests: XCTestCase {
    func testPopularPhotosAreNotEmpty() {
        let server: APIWrapper500pxProtocol = APIWrapper500pxMock()
        
        let sut: PhotoList = server.popularPhotos("consumer key")
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(20, sut.count())
    }
    
    func testPopularPhotosHaveName() {
        let server: APIWrapper500pxProtocol = APIWrapper500pxMock()
        
        let list: PhotoList = server.popularPhotos("consumer key")
        
        for photo in list.getAll() {
            XCTAssertTrue(!photo.name.isEmpty)
            XCTAssertTrue(photo.photoId >= 0)
        }
    }
   
}
