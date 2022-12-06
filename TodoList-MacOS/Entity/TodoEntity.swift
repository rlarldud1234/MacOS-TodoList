import Foundation

struct TodoEntity: Equatable, Decodable, Encodable {
    let id: String
    let title: String
    let content: String
    let createAt: Date
}
