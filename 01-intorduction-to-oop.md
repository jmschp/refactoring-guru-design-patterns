# Introduction to OOP

## Basics of OOP

Object-oriented programming (OOP) is a programming paradigm that relies on organizing code in a way that data and behavior related to that data are wrapped in **Objects**. The Objects are constructed form a blueprint, defined by the programmer that we call a **Class**. It provides a way to structure and design software by representing real-world entities and their interactions.

The **Class** defines the data, also know as fields, attributes, properties or instance variables, this is the state of the object. And defines the behavior, known as the instance methods, of an object, that can act or not on it attributes. Collectively they are refenreced as the members of their Class.

1. **Attributes**: Attributes represent the data or state associated with an object. They define the properties or characteristics that an object of a particular Class can have. For example, a Class representing a car may have attributes such as color, brand, model, and number of doors.
2. **Methods**: Methods define the behavior or actions that objects of a Class can perform. They encapsulate the operations that can be executed on the object's data. Methods can manipulate the object's attributes, perform calculations, interact with other objects, or provide some functionality. For example, a car Class may have methods such as `startEngine()`, `accelerate()`, `brake()`, and `changeGear()`.

In summary, the members of a Class encompass both the attributes (data or state) and methods (behavior or operations) that define the characteristics and capabilities of objects created from that Class. These members collectively describe the structure and behavior of objects within a Class, allowing them to interact with each other and with objects of other Classes in the program.

### Class hierarchies

A Class can inherit its attributes and methods from a parent class. For example we might have a Vehicle Class, and then a Car Class that inherits form the Vehicle Class, and then a Truck Class that also inherits form the Vehicle Class. We call the parent Class the **superclass**, and a the child classes the **subclasses**.

A subclass can either use the Attributes and Methods form the superclass or can override them.

## Pillars of OOP

Object-oriented programming is based in 4 pillars:

- Abstraction
- Encalsulation
- Inheritance
- Polymorphism

### Abstraction
