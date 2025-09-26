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

# A narrow look at the types of VCS

```mermaid +render
flowchart LR
  VCS --> Centralized
  VCS --> Distributed
  Distributed --> SNAPSHOT["Snapshot-based"]
  Distributed --> PATCH["Patch-based"]
  Centralized --> FILE["File-based"]
  Centralized --> TREE["Tree-based"]

  style VCS fill:#fab387,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style Centralized fill:#94e2d5,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style Distributed fill:#94e2d5,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e

  style SNAPSHOT fill:#a6e3a1,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style PATCH fill:#f9e2af,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style FILE fill:#f38ba8,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style TREE fill:#f38ba8,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
```

<!-- end_slide -->
<!-- column_layout: [7, 3] -->
<!-- column: 0 -->

# Today's agenda

<!-- new_lines: 2 -->

```mermaid +render
flowchart LR
  VCS --> |<span style="padding:10px;color:#94e2d5;">Our focus for today</span>| Distributed
  Distributed --> SNAPSHOT["Snapshot-based"]
  Distributed --> PATCH["Patch-based"]

  SNAPSHOT --> |<span style="padding:10px;color:#f5e0dc;">Particularly this</span>| Git
  SNAPSHOT --> Mercurial
  SNAPSHOT --> ETC1["etc."]

  PATCH --> Darcus
  PATCH --> Pijul
  PATCH --> ETC2["etc."]

  style VCS fill:#fab387,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style Distributed fill:#94e2d5,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e

  style SNAPSHOT fill:#a6e3a1,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style Git fill:#f5e0dc,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style Mercurial fill:#f5e0dc,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style ETC1 fill:#f5e0dc,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e

  style PATCH fill:#f9e2af,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style Darcus fill:#cba6f7,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style Pijul fill:#cba6f7,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style ETC2 fill:#cba6f7,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
```

<!-- pause -->
<!-- column: 1 -->
<!-- new_lines: 5 -->

## Overview

<!-- pause -->

Git has:

<!-- incremental_lists: true -->

- 82 `porcelain` cmds
  - `main`
  - `manipulators`
  - `interrogators`
  - `interactors`

<!-- new_line -->

- 63 `plumbing` cmds
  - `manipulators`
  - `interrogators`
  - `syncing`
  - `internal`

<!-- incremental_lists: false -->
<!-- new_line -->

# Total: 145
