; highlights.scm
; See this for full list: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

; comments
(line_comment) @comment
(block_comment) @comment

; Argument definition
(argument name: (identifier) @parameter) 

; Variables
(local_var name: (identifier) @variable)
(environment_var name:(identifier) @variable.builtin)
(builtin_var) @constant.builtin

; (variable) @variable

; Functions
(function_definition
  name: (variable) @function)

; For function calls
(named_argument 
  name: (identifier) @property) 

; Methods
(method_call 
        name: (method_name) @method)

; Classes
(class) @type

; Literals
(number) @number
(pi_statement) @constant.builtin
(float) @float

(string) @string
(symbol) @string.special

; Operators
[
"&&"
"||"
"&"
"|"
"^"
"=="
"!="
"<"
"<="
">"
">="
"<<"
">>"
"+"
"-"
"*"
"/"
"%"
"="
"|@|"
"@@"
"@|@"
] @operator


; Keywords
[
"arg"
"classvar"
; "const"
; "super"
; "this"
"var"
] @keyword

; Brackets
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  "|"
] @punctuation.bracket

; Delimeters
[
  ";"
  "."
  ","
] @punctuation.delimiter

; control structure
(control_structure) @conditional

(escape_sequence) @string.special

; SinOsc.ar()!2
(duplicated_statement) @repeat
