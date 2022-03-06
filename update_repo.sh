#/bin/sh
cd docs
for chart in $(ls ../charts); do
    helm package ../charts/${chart}
done
helm repo index .
cd ..