import XCTest
import PhotoViewer

class PhotoTests: XCTestCase {
    func testCanCreateAPhotoUsingAnIdAndValidName() {
        let sut = Photo(photoId: 10, name: "My photo")
        XCTAssertEqual(10, sut.photoId)
        XCTAssertEqual("My photo", sut.name)
    }
    
    func testCanCreateAPhotoUsingDesignatedInit() {
        let sut = Photo(photoId: 10, name: "My photo", photoURL: "url", photoDescription: "desc", width: 100, height: 120)
        
        XCTAssertEqual("url", sut.photoURL)
        XCTAssertEqual("desc", sut.photoDescription)
        XCTAssertEqual(100, sut.width)
        XCTAssertEqual(120, sut.height)
    }
    
}
