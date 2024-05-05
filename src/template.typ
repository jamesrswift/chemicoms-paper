#import "@local/valkyrie:0.1.2" as z;
#import "./elements.typ" as elements;

#let template-schema = z.dictionary(
  title: z.content(),
  abstract: z.content(default: []),
  dates: z.array(z.dictionary(
    type: z.content(),
    date: z.string()
  )),
  //paper: z.papersize(default: "a4"),
  authors: z.array(z.dictionary(
    name: z.string(),
    corresponding: z.boolean(default: false),
    orcid: z.optional(z.string())
  )),
  header: z.dictionary(
    journal: z.content(default: [Journal Name]),
    article-type: z.string(default: "Article"),
    article-color: z.color(default: rgb(167,195,212)),
    article-meta: z.content(default: [])
  ),
  keywords: z.array(z.string()),
  doi: z.optional(z.string()),
  citation: z.content(default: [])
);

#let template(body, ..args) = {

  let args = z.parse(args.named(), template-schema);

  // setup
  set text(font: "Droid Sans", lang: "en", size:9pt)
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
  set text( font: "CMU Sans Serif", lang: "en", size:9pt )
  set par( first-line-indent: 0.45cm );
  show par: set block(above: 0pt, below: 0.618em,)
  show: columns.with(2, gutter: 1.618em)

  show figure.caption: c => {
    set par(justify: true, first-line-indent: 0cm);
    align(left, par(justify: true, first-line-indent: 0cm)[*#c.supplement #c.counter.display(c.numbering)#c.separator*#c.body])
  }

  body;
}
