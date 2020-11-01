import Html
import SystemPackage

let doc: Node = .document(
  .html(
    .body(
      .h1("Hello nerd!"),
      .p("Stay a while and listen!")
    )
  )
)

let html = render(doc)
let path = "/Users/ferologics/Dev/www.ferologics.com/index.html"
let fd = try FileDescriptor.open(
  path,
  .writeOnly,
  options: [.append, .create],
  permissions: .ownerReadWrite
)

try fd.closeAfter { 
  _ = try fd.writeAll(html.utf8) 
}
