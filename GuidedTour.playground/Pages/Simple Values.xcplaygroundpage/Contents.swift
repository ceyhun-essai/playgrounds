//: # Guided Tour
//:
//: Aslında önemli olan doğru dürüst Swift generate edebilmek ki,
//: ayrı bir playground'da kullanılabilsin; yani
//:
//:     print("Hello, world!")
//:
//: yerine
//:
//:     print("print(\"Hello, world\")")
//:
//: Generate edilen kod MyPlayground'a paste edilecek.
//:
//: ## Simple Values
//:
//: Use `let` to make a constant and `var` to make a variable. The value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once. This means you can use constants to name a value that you determine once but use in many places.
//:
var myVariable = 42
myVariable = 50
let myConstant = 42

/*
 Şimdi some code generation.
 */
/*
var vars=[["day", 15], ["month", 06], ["year", 1962], ["age", 55]]
var consts=[["pi", 3.1415926], ["byteLen", 8]]
for v in vars {
    print("var \(v[0]) = \(v[1])")
}
for c in consts {
    print("let \(c[0]) = \(c[1])")
}
*/

//: A constant or variable must have the same type as the value you want to assign to it. However, you don’t always have to write the type explicitly. Providing a value when you create a constant or variable lets the compiler infer its type. In the example above, the compiler infers that `myVariable` is an integer because its initial value is an integer.
//:
//: If the initial value doesn’t provide enough information (or if there is no initial value), specify the type by writing it after the variable, separated by a colon.
//:
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
//: - Experiment:
//: Create a constant with an explicit type of `Float` and a value of `4`.
//:
//: Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.
//:
let label = "The width is "
let width = 94
let widthLabel = label + String(width)



//: - Experiment:
//: Try removing the conversion to `String` from the last line. What error do you get?
//:
//: There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (`\`) before the parentheses. For example:
//:
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//: - Experiment:
//: Use `\()` to include a floating-point calculation in a string and to include someone’s name in a greeting.
//:
//: Use three double quotes (`"""`) for strings that take up multiple lines. Indentation at the start of each quoted line is removed, as long as it matches the indentation of the closing quote. For example:
//:
/*

let quotation = """
    Even though there's whitespace to the left,
    the actual lines aren't indented.
        Except for this line.
    Double quotes (") can appear without being escaped.

    I still have \(apples + oranges) pieces of fruit.
    """

 */
//: Create arrays and dictionaries using brackets (`[]`), and access their elements by writing the index or key in brackets. A comma is allowed after the last element.
//:
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ]
occupations["Jayne"] = "Public Relations"

let todo=["Sigara", "Eczane", "Superonline fatura", "Amerika para",]
let alisveris=["Maydanoz", "Dereotu", "Nane"]
/// <#Description#>
let digits=[2:"10", 3:"11", 4:"100", 5:"101",]
var binDigits=[2:[0,1], 3:[1,1], 4:[1,0,0], 5:[1,0,1],]

var yapilacak=[String]()
var rakamlar=[Int:String]()
var divisors=[Int:[Int]]()
divisors=[4:[2], 6:[2,3], 12:[2,3,4,6,], 15:[3,5]]

/*
    Şimdi some code generation.
 */
shoppingList=["tereyağ", "mayonez", "salata", "hıyar", "taze soğan"]
var ödemeler=["deniz kk", "superonline", "hsbc kk"]
var sağlık=["duş", "traş", "merdiven", "yürüyüş"]
var temizlik=["çamaşır", "bulaşık"]

func print_contents(array: [String]) {
    for item in array {
        print("\"\(item)\", ")
    }
}

func print_array(name: String, array: [String]) {
    print("let \(name)=[")
    print_contents(array: array)
    print("];")
}

func concat(arrays:[[String]])-> [String] {
    var ret = [String]()
    for array in arrays {
        ret.append(contentsOf: array)
    }
    return ret
}

print_array(name: "yapılacaklar", array: concat(arrays: [sağlık, temizlik, ödemeler, shoppingList]))

func print_dict_item(name: String, array: [String]) {
    print("\"\(name)\": [")
    print_contents(array: array)
    print("],")
    
}

print("let yap = [")
print_dict_item(name: "sağlık", array: sağlık)
print_dict_item(name: "temizlik", array: temizlik)
print("]")

//: To create an empty array or dictionary, use the initializer syntax.
//:
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//: If type information can be inferred, you can write an empty array as `[]` and an empty dictionary as `[:]`—for example, when you set a new value for a variable or pass an argument to a function.
//:
shoppingList = []
occupations = [:]

yapilacak=[]
rakamlar=[:]
binDigits=[:]
divisors=[:]

//: See [License](License) for this sample's licensing information.
//: 
//: [Next](@next)
