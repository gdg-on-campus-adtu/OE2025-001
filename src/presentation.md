---
title: "**OE2025-001**———Introduction to Version Control through Git"
sub_title: Google Developer Groups on Campus, Assam down town University
date: 2025-x-y
author: <...>
---

# 1.1. What does one mean by Version Control?

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

# 1.2. What about the types? Lets have a broad look:

<!-- end_slide -->

# 1.2. What about the types? Lets have a ~~broad~~ <span style="color:green;">narrow</span> look:

<!-- pause -->

```mermaid +render
flowchart LR
  VCS --> Centralized
  VCS --> Distributed

  style VCS fill:#fab387,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style Centralized fill:#94e2d5,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
  style Distributed fill:#94e2d5,stroke:#1e1e2e,stroke-width:2px,color:#1e1e2e
```

<!-- end_slide -->

# 1.2. What about the types? Lets have a ~~broad~~ <span style="color:green;">narrow</span> look:

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

# 1.3. Okay, what's the difference?

<!-- pause -->

Well, take a look at this `pretty table` for a change (literally):

```typst +render
#import "@preview/catppuccin:1.0.0": catppuccin, flavors
#show: catppuccin.with(flavors.mocha)
#set text(font: "Maple Mono NF")

#set table(
  stroke: none,
  gutter: 0.3em,
  fill: (x, y) =>
    if x == 0 or y == 0 { rgb(flavors.mocha.colors.lavender.hex) },
  inset: (right: 1.5em),
)

#show table.cell: it => {
  if it.x == 0 or it.y == 0 {
    set text(rgb(flavors.mocha.colors.base.hex))
    strong(it)
  } else {
    it
  }
}

#table(
  columns: 4,
  [], [Snapshot-based], [Patch-based], [File-based / Tree-based],

  [Initial balance],
  [100],
  text(rgb(flavors.mocha.colors.green.hex))[+100],
  text(rgb(flavors.mocha.colors.green.hex))[+100],

  [Salary],
  [400],
  text(rgb(flavors.mocha.colors.green.hex))[+300],
  text(rgb(flavors.mocha.colors.red.hex))[-100] + ", " + text(rgb(flavors.mocha.colors.green.hex))[+400],

  [Heating],
  [0],
  text(rgb(flavors.mocha.colors.red.hex))[-400],
  text(rgb(flavors.mocha.colors.red.hex))[-400] + ", " + text(rgb(flavors.mocha.colors.green.hex))[+0],
)
```

<!-- pause -->

What is the `observation`?

<!-- incremental_lists: true -->

- `Snapshot-based` VCS store the `state` of the changes.
- `Patch-based` VCS store the `patches applied` or `operations` made by changes.
- `File-based` or `Tree-based` VCS store the `deltas` or `differences` made by
  changes.
  - `File-based` VCS tracks changes at the level of `individual files`.
  - `Tree-based` VCS tracks changes at the level of an entire directory tree,
    not just individual files.

<!-- incremental_lists: false -->

<!-- new_lines: 2 -->
<!-- alignment: center -->

~~<span style="color:red;">Btw, on the note of patch-based systems, the
mathematics behind the theory of patches uses CRDTs...</span>~~

Ok, lets not!

<!-- pause -->

Drop a message to `@debarchito`, if you want to discuss the nerdy stuffs!

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
<!-- new_lines: 3 -->

## Overview

<!-- pause -->

Git has:

<!-- incremental_lists: true -->

- 82 `porcelain` commands
  - `main`
  - `manipulators`
  - `interrogators`
  - `interactors`

<!-- new_line -->

- 63 `plumbing` commands
  - `manipulators`
  - `interrogators`
  - `syncing`
  - `internal`

<!-- incremental_lists: false -->
<!-- new_line -->

`->` A total of `145 commands`! While that's a lot, _<span style="color:red;">we
won't need them all</span>_ through out this presentation.
