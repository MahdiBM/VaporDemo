import Fluent
import Vapor

func routes(_ app: Application) throws {
    // vapordemo.com
    app.get { req async throws in
        try await req.view.render("index", ["title": "Hello Vapor!"])
    }
    
    // vapordemo.com/hello
    app.get("hello") { req -> String in
        "Hello, world!"
    }

    try app.register(collection: TodoController())
}
