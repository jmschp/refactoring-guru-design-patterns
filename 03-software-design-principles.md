# Software Design Principles

## Features of good design

- Code reuse: Code reuse is one way of making development faster and thus less costly. Design Pattern allows you to make your code more reusable. But tight coupling between components can make it harder to reuse code. With Design Patterns we can make our code more flexible and reusable.
- Extensibility: Software should be extensible. Usually when we release the first version of an application and users start to use, a lot might change, the client might request new feature, or the market it self has sifted and we need to pivot. We should design software that is extensible and flexible, allowing for new feature without breaking existing code.

## Design Principles

Most of the Design Patterns follow a set of Design Principles.

- Encapsulate What Varies
- Program to an Interface, not an Implementation
- Favor Composition Over Inheritance

### Encapsulate What Varies

We should identify, and isolate in independent modules, what parts of the program vary, in order to protect the rest from effects caused by changes. We can encapsulate at a methods level, extracting some parts of a method into other methods that can be private. Or at Class level, extracting to a whole new Class some functionality, this usually happens when we start to add new functionality to a method to a point that it blurs the responsibility of the containing class.

### Program to an Interface, not an Implementation

Rather than directly depending on concrete classes or implementations, the principle suggests depending on abstract types, such as interfaces or abstract classes. By programming to abstractions, you decouple the client code from specific implementations, promoting loose coupling and flexibility.

## Favor Composition Over Inheritance

Inheritance represents the “is a” relationship between classes, composition represents the “has a” relationship. Inheritance can lead to several problems, specially, when the code base starts to grow.

> - A subclass can’t reduce the interface of the superclass. You have to implement all abstract methods of the parent class even if you won’t be using them.
> - When overriding methods you need to make sure that the new behavior is compatible with the base one. It’s important because objects of the subclass may be passed to any code that expects objects of the superclass and you don’t want that code to break.
> - Inheritance breaks encapsulation of the superclass because the internal details of the parent class become available to the subclass. There might be an opposite situation where a pro- grammer makes a superclass aware of some details of sub- classes for the sake of making further extension easier.
> - Subclasses are tightly coupled to superclasses. Any change in a superclass may break the functionality of subclasses.
> - Trying to reuse code through inheritance can lead to creat- ing parallel inheritance hierarchies. Inheritance usually takes place in a single dimension. But whenever there are two or more dimensions, you have to create lots of class combina- tions, bloating the class hierarchy to a ridiculous size.

Alexander Shvets, Dive Into Design Patterns

Favoring composition we can go around this problems. The containing class delegates certain tasks or responsibilities to the contained objects, rather than inheriting all the characteristics of a base class, a class can selectively compose with different classes to obtain the desired behavior and functionality.

This principle applies to both Composition and Aggregation.

## SOLID Principles

- Single Responsibility Principle (SRP)
- Open-Closed Principle (OCP)
- Liskov Substitution Principle (LSP)
- Interface Segregation Principle (ISP)
- Dependency Inversion Principle (DIP)

### Single Responsibility Principle (SRP)

This principle states that a class should have only one reason to change. It suggests that a class should have a single responsibility or purpose, encapsulating a single functionality or behavior. This promotes high cohesion and reduces the risk of unintended consequences when modifying the class.

### Open-Closed Principle (OCP)

The Open-Closed Principle advocates that software entities (classes, modules, functions, etc.) should be open for extension but closed for modification. It means that the behavior of a component can be extended without modifying its existing code. This is typically achieved by using abstractions, interfaces, and polymorphism to allow for easy addition of new features or behaviors.

### Liskov Substitution Principle (LSP)

The Liskov Substitution Principle states that objects of a superclass should be replaceable with objects of its subclasses without affecting the correctness of the program. In other words, subclasses should be able to be used as substitutes for their base classes, adhering to the same contracts and behaving in a consistent manner. Unlike other SOLID principles, which are open to interpretation, the Liskov Substitution Principle has a set of formal requirements that define the conditions for ensuring the principle is upheld.

- Parameter types in a method of a subclass should match or be more abstract than parameter types in the method of the superclass.
- The return type in a method of a subclass should match or be a subtype of the return type in the method of the superclass.
- A method in a subclass shouldn’t throw types of exceptions which the base method isn’t expected to throw.
- A subclass shouldn’t strengthen pre-conditions.
- A subclass shouldn’t weaken post-conditions.
- Invariants of a superclass must be preserved.
- A subclass shouldn’t change values of private fields of the superclass.

### Interface Segregation Principle (ISP)

The Interface Segregation Principle (ISP) emphasizes that clients should not be forced to depend on interfaces they do not use. In simpler terms, it suggests that interfaces should be fine-grained and focused on specific client requirements rather than being large and monolithic.

### Dependency Inversion Principle (DIP)

Dependency Inversion Principle (DIP) suggests that high-level modules should not depend on low-level modules, but both should depend on abstractions. It promotes decoupling and flexibility in software systems by reversing the traditional direction of dependencies. DIP promotes the use of abstractions, such as interfaces or abstract classes, as contracts between modules. By depending on abstractions, modules are decoupled from the concrete implementations, allowing for easier substitution of different implementations without affecting the higher-level modules.
