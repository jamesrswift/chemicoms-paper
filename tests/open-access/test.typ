#import "/src/lib.typ": template, elements;
#import "@preview/scienceicons:0.0.6": open-access-icon

#set page(paper: "us-letter", margin: (left: 10mm, right: 10mm, top: 12mm, bottom: 15mm), height: auto)

#show: template.with(
  title: [A typesetting system to untangle the scientific writing process],
  abstract: ([The process of scientific writing is often tangled up with the intricacies of typesetting, leading to frustration and wasted time for researchers. In this paper, we introduce Typst, a new typesetting system designed specifically for scientific writing. Typst untangles the typesetting process, allowing researchers to compose papers faster. In a series of experiments we demonstrate that Typst offers several advantages, including faster document creation, simplified syntax, and increased ease-of-use.], (title: "Plain Language Summary", content: lorem(20))),
  header: (
    article-color: rgb("#7a9371"),
    article-type: [Open Access] + open-access-icon(color: white, height: auto, baseline: 15%),
    //article-meta: [Not Peer-Reviewed],
  ),
  venue: [_Ars Bibliologia_],
  authors: (
    (
      name: "Martin Haug",
    ),
    (
      name: "Laurenz Mädje", 
      corresponding: true,
      orcid: ""
    ),
  ),
  dates: (
    (type: "Received Date", date: datetime.today()),
    (type: "Revised Date", date: datetime.today()),
    (type: "Accepted Date", date: datetime.today())
  ),
  doi: "00.0000/XXXXXXXXXX",
  citation: [M. Haug L. and Mädje, _Ars Bibliologia_, 2024, *3*, 1---2],
)