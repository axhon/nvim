; extends
(expression_statement
  (call_expression
    function: (identifier) @function (#eq? @function "sql")

    (template_string) @injection.content)
    (#offset! @injection.content 1 0 0 0)
    (#set! injection.language "sql")
)
