#!/bin/bash

set -euxo pipefail

rm -f combined.md

PAGEBREAK='```{=openxml}
<w:p>
  <w:r>
    <w:br w:type="page"/>
  </w:r>
</w:p>
```'

cat <<EOF >combined.md

$(cat ./report/README.md)

${PAGEBREAK}

$(cat ./01-routine-serial/README.md)

${PAGEBREAK}

$(cat ./02-xfel-synchrotron/README.md)

${PAGEBREAK}

$(cat ./03-deposition/README.md)

${PAGEBREAK}

$(cat ./04-missing-integration-scaling/README.md)

${PAGEBREAK}

$(cat ./05-missing-serial-methods/README.md)

${PAGEBREAK}

$(cat ./06-learn-chemical-crystallography/README.md)

${PAGEBREAK}

$(cat ./07-modelling-photons/README.md)

${PAGEBREAK}

$(cat ./08-stopping-publishing/README.md)

${PAGEBREAK}

$(cat ./executive-summary/README.md)

EOF

pandoc combined.md -No combined.docx
