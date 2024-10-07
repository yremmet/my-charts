#/bin/sh
cd docs
for chart in $(ls ../charts); do
    helm package ../charts/${chart}
done

helm package ../../charts/charts/cluster
helm repo index .
cd ..
