#let equation_counter = counter("equation")
#let equation(content) = [
  #equation_counter.step()
  #table(
    row-gutter: 0.15cm,
    stroke: none,
    inset: 1em,
    align: center+horizon,
    columns: (1fr, 5em),
    content,
    align(right, text(size:8pt)[(Eq. #equation_counter.display())] )
  )
]