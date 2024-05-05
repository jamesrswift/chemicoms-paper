#let credits = (
  concept: [Conceptualization], // Ideas; formulation or evolution of overarching research goals and aims
  
  methodology: [Methodology], // Development or design of methodology; creation of models
  
  software: [Software], // Programming, software development; designing computer programs; implementation of the computer code and supporting algorithms; testing of existing code components
  
  validation: [Validation], // Verification, whether as a part of the activity or separate, of the overall replication/ reproducibility of results/experiments and other research outputs
  
  analysis: [Formal analysis], // Application of statistical, mathematical, computational, or other formal techniques to analyze or synthesize study data
  
  investigation: [Investigation], // Conducting a research and investigation process, specifically performing the experiments, or data/evidence collection
  
  resources: [Resources], // Provision of study materials, reagents, materials, patients, laboratory samples, animals, instrumentation, computing resources, or other analysis tools
  
  dataCuration: [Data curation], // Management activities to annotate (produce metadata), scrub data and maintain research data (including software code, where it is necessary for interpreting the data itself) for initial use and later reuse

  writingDraft: [Writing -- Original Draft], // Preparation, creation and/or presentation of the published work, specifically writing the initial draft (including substantive translation)

  writingReview: [Writing -- Review #sym.amp Editing], // Preparation, creation and/or presentation of the published work by those from the original research group, specifically critical review, commentary or revision – including pre-or postpublication stages

  visualization: [Visualization], // Preparation, creation and/or presentation of the published work, specifically visualization/ data presentation

  supervision: [Supervision], // Oversight and leadership responsibility for the research activity planning and execution, including mentorship external to the core team

  administration: [Project administration], // Management and coordination responsibility for the research activity planning and execution

  funding: [Funding acquisition] // Acquisition of the financial support for the project leading to this publication
)

#let CRediT(
  author,
  ..credits
) = {
  return [*#author*: #credits.pos().join(", "). ]
}