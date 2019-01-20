import Foundation
import SwiftSyntax

let scriptPath = URL(fileURLWithPath: String(#file))

let codePath = scriptPath
    .deletingLastPathComponent()
    .deletingLastPathComponent()
    .deletingLastPathComponent()
    .appendingPathComponent("Resources/code.swift")

let sourceFile = try SyntaxTreeParser.parse(codePath)

let blocks = sourceFile.children.compactMap { $0 as? CodeBlockItemListSyntax }.first!
let block: CodeBlockItemSyntax = blocks.first!
let classDecl = block.children.compactMap { $0 as? ClassDeclSyntax }.first!
let funcDecl = classDecl.members.members.children.compactMap { $0 as? FunctionDeclSyntax }.first!
let funcSig = funcDecl.children.compactMap { $0 as? FunctionSignatureSyntax }.first!
let paramClause = funcSig.children.compactMap { $0 as? ParameterClauseSyntax }.first!
let params = paramClause.children.compactMap { $0 as? FunctionParameterListSyntax }.first!
let param0: FunctionParameterSyntax = params[0]

print(param0)

if let ellipsis = param0.ellipsis {
    print("---ellipsis---")
    print(type(of: ellipsis))
    print(ellipsis)
    print("---")
} else {
    print("no ellipsis")
}

if let trailingComma = param0.trailingComma {
    print("---trailing comma---")
    print(type(of: trailingComma))
    print(trailingComma)
    print("---")
} else {
    print("no trailing comma")
}

