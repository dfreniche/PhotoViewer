import Foundation

protocol CollectionProtocol {
    typealias T
    
    func count() -> Int
    func add(element: T)
    func elementAt(position: Int) -> T?
    func getAll() -> [T]
}