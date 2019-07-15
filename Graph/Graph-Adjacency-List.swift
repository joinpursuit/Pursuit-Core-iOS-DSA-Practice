import Foundation

// Vertex
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


var airlineFlights = Graph<String>()

let singapore = airlineFlights.createVertex("Singapore")
let hongKong = airlineFlights.createVertex("Hong Kong")
let tokyo = airlineFlights.createVertex("Tokyo")
let washingtonDC = airlineFlights.createVertex("Washington DC")
let sanFrancisco = airlineFlights.createVertex("San Francisco")
let austinTexas = airlineFlights.createVertex("Austin Texas")
let detroit = airlineFlights.createVertex("Detroit")
let seattle = airlineFlights.createVertex("Seattle")

airlineFlights.add(.undirected, from: singapore, to: tokyo, weight: 500)
airlineFlights.add(.undirected, from: singapore, to: hongKong, weight: 300)
airlineFlights.add(.undirected, from: tokyo, to: detroit, weight: 450)
airlineFlights.add(.undirected, from: tokyo, to: hongKong, weight: 250)
airlineFlights.add(.undirected, from: tokyo, to: washingtonDC, weight: 300)
airlineFlights.add(.undirected, from: hongKong, to: sanFrancisco, weight: 600)
airlineFlights.add(.undirected, from: detroit, to: austinTexas, weight: 50)
airlineFlights.add(.undirected, from: sanFrancisco, to: washingtonDC, weight: 337)
airlineFlights.add(.undirected, from: sanFrancisco, to: seattle, weight: 218)
airlineFlights.add(.undirected, from: sanFrancisco, to: austinTexas, weight: 297)
airlineFlights.add(.undirected, from: washingtonDC, to: seattle, weight: 277)
airlineFlights.add(.undirected, from: washingtonDC, to: austinTexas, weight: 292)

print("Adjacency List Graph Implementation (Airline Flights):")
print("=======================================================")
print(airlineFlights)

print("\n")

if let flights = airlineFlights.edges(from: sanFrancisco) {
  print("Flights from San Francisco: ")
  for (index, edge) in flights.enumerated() {
    if index != flights.count - 1 {
      print("\(edge.destination.data)", terminator: ", ")
    } else {
      print("\(edge.destination.data)", terminator: " ")
    }
  }
}

print("\n")

if let price = airlineFlights.weight(from: tokyo, to: washingtonDC) {
  print("The Ticket price from Tokyo to DC is $\(price)")
}

/*
Adjacency List Graph Implementation (Airline Flights):
=======================================================
Seattle --> [San Francisco, Washington DC]
Austin Texas --> [Detroit, San Francisco, Washington DC]
Singapore --> [Tokyo, Hong Kong]
Tokyo --> [Singapore, Detroit, Hong Kong, Washington DC]
Washington DC --> [Tokyo, San Francisco, Seattle, Austin Texas]
San Francisco --> [Hong Kong, Washington DC, Seattle, Austin Texas]
Hong Kong --> [Singapore, Tokyo, San Francisco]
Detroit --> [Tokyo, Austin Texas]



Flights from San Francisco: 
Hong Kong, Washington DC, Seattle, Austin Texas 

The Ticket price from Tokyo to DC is $300.0
*/
