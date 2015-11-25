import Foundation

public protocol APIWrapper500pxProtocol {
    func popularPhotos(consumerKey: String) -> PhotoList
}