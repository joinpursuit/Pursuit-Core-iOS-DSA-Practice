import UIKit




struct Vertex<T: Hashable>: Hashable {
    public var data: T
}

// Edge
struct Edge<T: Hashable> {
    public var source: Vertex<T>
    public var destination: Vertex<T>
    public var weight: Double?
}

// Edge Type: Graph edges can be directed (one direction e.g A -> B)
//            or undirected (both directions e.g vertex A -> B and B -> A)
enum EdgeType {
    case directed, undirected
}

// Graphable protocol - has the basic requirements of any type of Graph
protocol Graphable {
    associatedtype Element: Hashable
    mutating func createVertex(_ data: Element) -> Vertex<Element>
    mutating func add(_ edgeType: EdgeType,
                      from source: Vertex<Element>,
                      to destination: Vertex<Element>,
                      weight: Double?)
    func weight(from source: Vertex<Element>,
                to destination: Vertex<Element>) -> Double?
    func edges(from source: Vertex<Element>) -> [Edge<Element>]?
}

extension Graphable {
    public func breadthFirstSearch(from source: Vertex<Element>, to destination: Vertex<Element>)
        -> [Edge<Element>]? {
                var queue = Queue<Vertex<Element>>()
                queue.enqueue(source)
                var visits : [Vertex<Element> : Visit<Element>] = [source: .source] // 1
                
                while let visitedVertex = queue.dequeue() {
                    
                    if visitedVertex == destination {
                        var vertex = destination // 1
                        var route: [Edge<Element>] = [] // 2

                        while let visit = visits[vertex],
                            case .edge(let edge) = visit { // 3

                                route = [edge] + route
                                vertex = edge.source // 4

                        }
                        return route // 5
                    }
                    
                    let neighbourEdges = edges(from: visitedVertex) ?? []
                    for edge in neighbourEdges {
                        if visits[edge.destination] == nil { // 2
                            queue.enqueue(edge.destination)
                            visits[edge.destination] = .edge(edge) // 3
                        }
                    }

            }

            return nil
    }
}
// Graph implementation using an Adjacency List
struct Graph<T: Hashable>: Graphable {
    
    typealias Element = T
    
    // adjacency list works using a dictionary of key, value pairs
    // where key is the Vertex and the values are the Edge(s)
    private var adjacencyDict = [Vertex<T>: [Edge<T>]]()
    
    public mutating func createVertex(_ data: T) -> Vertex<T> {
        let vertex = Vertex(data: data)
        if adjacencyDict[vertex] == nil {
            adjacencyDict[vertex] = []
        }
        return vertex
    }
    
    private mutating func addUndirectedEdge(vertices: (Vertex<T>, Vertex<T>), weight: Double?) {
        let (source, destination) = vertices // Tuple unpacking
        addDirectedEdge(from: source, to: destination, weight: weight)
        addDirectedEdge(from: destination, to: source, weight: weight)
    }
    
    private mutating func addDirectedEdge(from source: Vertex<T>,
                                          to destination: Vertex<T>,
                                          weight: Double?) {
        let edge = Edge(source: source, destination: destination, weight: weight)
        adjacencyDict[source]?.append(edge)
    }
    
    public mutating func add(_ edgeType: EdgeType,
                             from source: Vertex<T>,
                             to destination: Vertex<T>,
                             weight: Double?) {
        switch edgeType {
        case .directed:
            addDirectedEdge(from: source, to: destination, weight: weight)
        case .undirected:
            addUndirectedEdge(vertices: (source, destination), weight: weight)
        }
    }
    
    public func weight(from source: Vertex<T>,
                       to destination: Vertex<T>) -> Double? {
        guard let edges = adjacencyDict[source] else { return nil }
        for edge in edges {
            if edge.destination == destination {
                return edge.weight
            }
        }
        return nil
    }
    
    func edges(from source: Vertex<T>) -> [Edge<T>]? {
        return adjacencyDict[source]
    }
    
    
    

    
    
}

extension Graph: CustomStringConvertible {
    var description: String {
        var result = ""
        for (vertex, edges) in adjacencyDict {
            var edgesResult = ""
            for (index, edge) in edges.enumerated() {
                if index != edges.count - 1 { // add a comma to the string
                    edgesResult += "\(edge.destination.data), "
                } else {
                    edgesResult += "\(edge.destination.data)"
                }
            }
            result += "\(vertex.data) --> [\(edgesResult)]\n"
        }
        return result
    }
    
    
}

enum Visit<T: Hashable> {
    case source
    case edge(Edge<T>)
}

struct Queue<T> {
    private var items = [T]()
    
    public var isEmpty: Bool {
        return items.isEmpty
    }
    
    public var peek: T? {
        return items.first
    }
    
    public mutating func enqueue(_ item: T) {
        items.append(item)
    }
    
    public mutating func dequeue() -> T? {
        return items.removeFirst()
    }
}
