# Papers

Technical whitepapers on my projects, written in LaTeX. Each one derives the
methods from the project's code and traces every number to a file in the
project (see each paper's provenance appendix).

| Paper | Project | PDF |
|---|---|---|
| BibleLM: Retrieval, Graph Methods and a From-Scratch Language Model in an Offline Study Bible | [biblelm](https://github.com/rwetz/biblelm) | [biblelm.pdf](https://github.com/rwetz/papers/releases/latest/download/biblelm.pdf) |
| Logscope: A Sound Trigram Index for Searching Live Log Streams | Logscope (private source) | [logscope.pdf](https://github.com/rwetz/papers/releases/latest/download/logscope.pdf) |
| Churn Risk: A Small Multilayer Perceptron for Predicting Customer Attrition | Axon demo on synthetic data | [churn-risk.pdf](https://github.com/rwetz/papers/releases/latest/download/churn-risk.pdf) |

The PDF links always point to the latest release.

## Build

Each paper is `<name>/<name>.tex`, a single self-contained file. Build with
[Tectonic](https://tectonic-typesetting.github.io):

```sh
./build.sh            # every paper, into out/
./build.sh logscope   # just one
```

CI builds every paper on each push. Pushing a `v*` tag publishes a release
with the PDFs attached.

## How they are written

Drafted with an AI assistant (Claude) from each project's source code, design
notes and run artifacts, then checked against them. Each paper states this in
its preparation note and lists anything that could not be confirmed.

Ryan Wetzstein
