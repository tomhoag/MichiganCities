# Michigan Cities

A simple little Swift package to generate `CLLocationCoordinate2D`'s wrapped in a `MichiganCity` struct.

```swift
public struct MichiganCity: Equatable, Hashable {

    public static func == (lhs: MichiganCity, rhs: MichiganCity) -> Bool {
        lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    public var id: Int
    public var name: String
    public var coordinate: CLLocationCoordinate2D
}
```

This was useful for working with SwiftUI maps to generate groups of `CLLocationCoordinate2D`'s in a relatively small space (the state of Michigan).

To create a specific `MichiganCity`:

```swift
let michiganCity = MichiganCities.fenton.asMichiganCity
```

To create an array of randomly selected MichiganCity:

```swift
let cities = MichiganCities.random(count: 25)!
```

An MKCoordinateRegion that encompasses both upper and lower peninsulas:

```swift
let region = MichiganCities.mapRegion
```
