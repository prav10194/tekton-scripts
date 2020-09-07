kubectl get namespace <your_namespace> -o json > resource.json

# edit the resource.json to delete finalize line to remove kubernetes and set the array as empty

kubectl replace --raw "/api/v1/namespaces/<your_namespace>/finalize" -f ./resource.json
