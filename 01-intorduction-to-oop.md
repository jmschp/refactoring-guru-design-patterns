# Introduction to OOP

## Basics of OOP

Object-oriented programming (OOP) is a programming paradigm that relies on organizing code in a way that data and behavior related to that data are wrapped in **Objects**. The Objects are constructed form a blueprint, defined by the programmer that we call a **Class**. It provides a way to structure and design software by representing real-world entities and their interactions.

The **Class** defines the data, also know as fields, attributes, properties or instance variables, this is the state of the object. And defines the behavior, known as the instance methods, of an object, that can act or not on it attributes. Collectively they are refenreced as the members of their Class.

1. **Attributes**: Attributes represent the data or state associated with an object. They define the properties or characteristics that an object of a particular Class can have. For example, a Class representing a car may have attributes such as color, brand, model, and number of doors.
2. **Methods**: Methods define the behavior or actions that objects of a Class can perform. They encapsulate the operations that can be executed on the object's data. Methods can manipulate the object's attributes, perform calculations, interact with other objects, or provide some functionality. For example, a car Class may have methods such as `startEngine()`, `accelerate()`, `brake()`, and `changeGear()`.

In summary, the members of a Class encompass both the attributes (data or state) and methods (behavior or operations) that define the characteristics and capabilities of objects created from that Class. These members collectively describe the structure and behavior of objects within a Class, allowing them to interact with each other and with objects of other classes in the program.

### Class hierarchies

A Class can inherit its attributes and methods from a parent Class. For example we might have a Vehicle Class, and then a Car Class that inherits form the Vehicle Class, and then a Truck Class that also inherits form the Vehicle Class. We call the parent Class the **Superclass**, and a the child classes the **subclasses**.

A Subclass can either use the Attributes and Methods form the Superclass or can override them.

![Class representation](./images/01-classes.drawio.svg)

## Pillars of OOP

Object-oriented programming is based in 4 pillars:

- Abstraction
- Encalsulation
- Inheritance
- Polymorphism

### Abstraction

Abstraction focuses on representing the essential features of an object while hiding unnecessary details. It allows developers to create abstract classes or interfaces that define common characteristics, behaviors, and contracts for a group of related classes. Abstraction provides a simplified view of objects and their interactions, enabling modular design, code reusability, and separation of concerns. It allows for high-level conceptualization and modeling of complex systems.

### Encapsulation

Encapsulation is the practice of bundling data (attributes) and the methods (behaviors) that operate on that data within a Class. It emphasizes hiding the internal details of an object and providing controlled access to the object's properties through well-defined interfaces. Encapsulation ensures data security, promotes code organization, and enables easier maintenance and modification of code.

### Inheritance

Inheritance allows classes to inherit properties and behaviors from other classes. It establishes an "is-a" relationship between classes, where a Subclass (derived Class) inherits characteristics from a Superclass (base Class). Inheritance promotes code reuse, reduces redundancy, and enables the creation of hierarchical Class structures. Subclasses can add or modify behaviors inherited from the Superclass, facilitating specialization and customization of classes.

### Polymorphism

Polymorphism allows objects of different classes to be treated as objects of a common Superclass. It enables the use of a single interface to represent multiple types. Polymorphism can be achieved through method overriding (where a Subclass provides its own implementation of a method defined in the Superclass) and method overloading (where multiple methods with the same name but different parameters are defined within a Class). Polymorphism promotes flexibility, extensibility, and code modularity.

## Relations Between Objects

In object-oriented programming (OOP), various relationships can be established between objects to represent different types of interactions and dependencies.

- Dependency
- Association
- Aggregation
- Composition

### Dependency

Dependency occurs when one object relies on another object but does not have ownership or direct association with it. It represents a using or accessing relationship. If an object uses another object's services, methods, or interfaces, a dependency is established. For example, a "Customer" object may have a dependency on a "Bank" object to perform financial transactions.

A Dependency is represented by a dashed arrow.

### Association

Association represents a relationship between two or more objects, where objects are loosely connected without any ownership or dependency. It can be a unidirectional or bidirectional relationship. For example, a "Teacher" object may be associated with multiple "Student" objects in a classroom.

An Association is represented by a solid arrow.

### Aggregation

Aggregation is a specialized form of association that represents a "has-a" relationship, where one object is composed of or contains other objects. The aggregated objects can exist independently outside the main object. For example, a "Car" object can have a "Wheel" object as part of its composition.

An aggregation is represented by a arrow, pointing to the component, and with an empty diamond, on the container end.

### Composition

Composition is a stronger form of aggregation, where the aggregated objects are tightly coupled and have a "part-of" relationship with the main object. In composition, the lifetime of the aggregated objects is controlled by the main object. For example, a "House" object composed of multiple "Room" objects. If the house is destroyed, the rooms are also destroyed. The component can not exist without the container.

![Dependency](./images/02-relations-between-objects.drawio.svg "Dependency")

#### Summary

> - Dependency: Class А can be affected by changes in class B.
> - Association: Object А knows about object B. Class A depends on B.
> - Aggregation: Object А knows about object B, and consists of B. Class A depends on B.
> - Composition: Object А knows about object B, consists of B, and manages B’s life cycle. Class A depends on B.
> - Implementation: Class А defines methods declared in interface B. Objects A can be treated as B. Class A depends on B.
> - Inheritance: Class А inherits interface and implementation of class B but can extend it. Objects A can be treated as B. Class A depends on B.

Alexander Shvets, Dive Into Design Patterns
