import Foundation
public struct Person {
    public var name: String
    public var age: Int
    public private(set) var dateCreated: Date

    public init(name: String, age: Int) {
        self.name = name
        self.age = age
        self.dateCreated = Date.now
    }
}
