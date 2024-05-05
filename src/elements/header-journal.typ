#let header-journal(args) = {
    block(inset: 0.2cm, width:100%, {
    text(28pt, args.header.journal)
    h(1fr)
    text(28pt, args.header.article-meta)
  })
}