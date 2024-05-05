#import "/src/lib.typ": template, elements;
#import "credit.typ": *

#set page(paper: "us-letter", margin: (left: 10mm, right: 10mm, top: 12mm, bottom: 15mm))

#show: template.with(
  title: [Effects of $#sym.beta$-Cyclodextrin, Triacetin, Propylene Glycol, and Ethanol on the Release of Aroma Compounds from Aqueous Solutions],
  abstract: lorem(75),
  header: (
    article-color: rgb(86,111,127),
    article-type: "Preprint",
    article-meta: [Not Peer-Reviewed],
    journal: place(image("rgb.svg", height: 34pt), dy:-0.25cm)
  ),
  authors: (
    (
      name: "L.I. Dolor",
    ),
        (
      name: "S. A. Consectetur",
    ),
    (
      name: "A. E. Sed", 
      corresponding: true,
      orcid: ""
    ),
  ),
  dates: (
    (type: "Received Date", date: "00/00/20XX"),
    (type: "Revised Date", date: "00/00/20XX"),
    (type: "Accepted Date", date: "00/00/20XX")
  ),
  doi: "00.0000/XXXXXXXXXX",
  citation: [L.I. Dolor, S. A. Consectetur and A. E. Sed, _ChemR#sym.chi;iv_, 2024, *3*, 1---3]
)

#let lorem-pars(n, each: 4) = {
  let sentences = lorem(n * each * 30).split(". ")
  range(n)
    .map(i => sentences.slice(i * each, count: each).join(". ") + [.])
    .join(parbreak())
}

= Introduction

#lorem-pars(1) @gree00
$ sum_(k=0)^n k = 1 + ... + n $
#elements.float(align: bottom, [\*Corresponding author])

#lorem-pars(4) @netwok2020

#elements.float(
  align: bottom,
  figure(
      image("Caffeine_structure.svg.png", width:25%),
      caption: [The structure of caffeine in skeletal format, showing the nitrogens and oxygens. All carbons are represented as vertices, and hydrogens are filled onto these vertices according to valence. @smit54]
    )
)


= Methodology
#lorem-pars(2)

== Materials
#lorem(20)

== Chemicals 
#lorem(50)

== Samples
#lorem(75)

== Methods
#lorem(250)

=== Measurement
#lorem(250)

= Results and Discussion
#lorem-pars(7)

= Conclusions
#lorem(150)

#set heading(numbering: none)
= CRediT authorship contribution statement
#CRediT("L. I. Dolor", 
  credits.concept, 
  credits.dataCuration, 
  credits.analysis, 
  credits.investigation,
  credits.visualization,
  credits.methodology, 
  credits.validation, 
  credits.writingDraft)
#CRediT("S. A. Consectetur",  
  credits.dataCuration, 
  credits.analysis, 
  credits.investigation,
  credits.visualization)
#CRediT("A. E. Sed", 
  credits.concept, 
  credits.supervision,
  credits.writingReview)
  
= Conflicts of Interest
The authors have no conflicts of interest to declare. All co-authors have seen and agree with the contents of the manuscript and there is no financial interest to report.

= Acknowledgements
#lorem(20)

= Notes and References
#set par(justify: true, first-line-indent: 0pt);
#lorem(20)
#bibliography(title:none, style:"ieee", "references.bib")