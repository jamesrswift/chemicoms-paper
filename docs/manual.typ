#import "@preview/mantys:0.1.1": *

#import "/src/lib.typ" as chemicons

#let package = toml("/typst.toml").package

#show: mantys.with(
  ..package,
  date: datetime.today().display(),
  examples-scope: (chemicons: chemicons)
)

#show raw: it => {
  show "{{VERSION}}": package.version
  it
}