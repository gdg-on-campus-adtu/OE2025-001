---
title: "**OE2025-001**———Introduction to Version Control through Git"
sub_title: Google Developer Groups on Campus, Assam down town University
date: 2025-x-y
author: <...>
---

# What does one mean by Version Control?

- Version control is like keeping a `journal of your files`.
- It tracks `changes over time`, so you can `go back if something breaks`.
- `Multiple people` can work together safely `without overwriting each other`.
- You can `try new ideas` and `merge them back` when ready, without
  `conflicting
  others`.

<!-- new_line -->

<!-- column_layout: [1, 1] -->

<!-- column: 0 -->

```mermaid +render
flowchart TB
  REPO --> CHANGE

  CHANGE[Make changes] --> COMMIT[Commit changes]
  COMMIT --> REPO[(Repository)]
  COMMIT --> DISCARD[Discard changes]

  style REPO fill:#fab387,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style CHANGE fill:#a6e3a1,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style COMMIT fill:#f9e2af,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style DISCARD fill:#f38ba8,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
```

<!-- column: 1 -->

```mermaid +render
flowchart TB
  REPO[(Repository)] --> BRANCH[(Feature or Experiment)]
  BRANCH --> REPO
  BRANCH --> CHANGE

  CHANGE[Make changes] --> COMMIT[Commit changes]
  COMMIT --> BRANCH
  COMMIT --> DISCARD[Discard changes]

  style REPO fill:#fab387,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style BRANCH fill:#94e2d5,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style CHANGE fill:#a6e3a1,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style COMMIT fill:#f9e2af,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style DISCARD fill:#f38ba8,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
```

<!-- reset_layout -->

<!-- alignment: center -->

e.g. general workflow of a snapshot based VCS

<!-- end_slide -->
