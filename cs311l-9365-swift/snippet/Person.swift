class Person{
    private var firstName: String
    private var lastName: String
    private var age: Int
    private var email: String
    private var phoneNumber: String
    private var address: String
    private var city: String
    private var postalCode: String
    private var country: String

    init(firstName: String, lastName: String, age: Int, email: String, phoneNumber: String, address: String, city: String, postalCode: String, country: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.email = email
        self.phoneNumber = phoneNumber
        self.address = address
        self.city = city
        self.postalCode = postalCode
        self.country = country
    }

    // Getters here
}