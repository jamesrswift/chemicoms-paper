#import "@local/valkyrie:0.1.2" as z;
#import "./elements.typ" as elements;

#let template-schema = z.dictionary(
  (  
    header: z.dictionary(
      (
        article-type: z.content(default: "Article"),
        article-color: z.color(default: rgb(167,195,212)),
        article-meta: z.content(default: [])
      )
    ),
    fonts: z.dictionary(
      (header: z.string(default: "Century Gothic"),
      body: z.string(default: "CMU Sans Serif"))
    )
  )
);

#let template(body, ..args) = {

  let args = z.parse(args.named(), z.dictionary-join(z.schemas.pubmatter, template-schema));

  // setup
  set text(font: args.fonts.header, lang: "en", size:9pt)
  set page(footer: elements.footer(args))

  show heading: set block(above: 1.4em, below: 0.8em)
  show heading: set text(size: 12pt)
  set heading(numbering: "1.1")
  set par(leading: 0.618em, justify: true)

  v(1.2em)
  elements.header-journal(args)
  elements.header-block(args)
  elements.precis(args)
  v(0.8em)

  // Main body.
  set text( font: args.fonts.body, lang: "en", size:9pt )
  set par( first-line-indent: 0.45cm );
  show par: set block(above: 0pt, below: 0.618em,)
  show: columns.with(2, gutter: 1.618em)

  show figure.caption: c => {
    set par(justify: true, first-line-indent: 0cm);
    align(left, par(justify: true, first-line-indent: 0cm)[*#c.supplement #c.counter.display(c.numbering)#c.separator*#c.body])
  }

  set math.equation(numbering: "(Eq. 1)")
  show math.equation: set block(spacing: 1em, above: 1.618em, below: 1em)
  body;
}
