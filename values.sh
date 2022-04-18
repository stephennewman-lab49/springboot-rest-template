#!/bin/sh

## substitutes values in all source files so that can be built locally and rename some directories
## assume that backstage does similar substituting values collected on setup page
## values to be substituted take the form {{values.name}}
## not 100% working but good enough to build the application


rm -r target

mv \$\{\{values.artifact_id\}\}.sh stephen-demo.sh

mv src/main/java/com/example/\$\{\{values.java_package_name\}\}/ src/main/java/com/example/rest
mv src/test/java/com/example/\$\{\{values.java_package_name\}\} src/test/java/com/example/rest

sed -i '.bak' 's/ | dump//g' catalog-info.yaml


find ./ -type f -exec sed -i '.bak' 's/${{values.artifact_id}}/stephen-demo/g' {} \;
find ./ -type f -exec sed -i '.bak' 's/${{values.component_id}}/stephen-demo/g' {} \;


find ./ -type f -exec sed -i 's/${{values.description}}/create springboot-based microservice skeleton project for deployment to k8/g' {} \;
find ./ -type f -exec sed -i 's/${{ values.description }}/create springboot-based microservice skeleton project for deployment to k8/g' {} \;
sed -i '.bak' 's/${{values.description}}/create springboot-based microservice skeleton project for deployment to k8/g' pom.xml docs/index.md mkdocs.yml catalog-info.yaml

find ./ -type f -exec sed -i '.bak' 's/${{values.destination.owner}}/stephennewman-lab49/g' {} \;
find ./ -type f -exec sed -i '.bak' 's/${{values.destination.repo}}/https://github.com/stephennewman-lab49/springboot-rest-template/g' {} \;
find ./ -type f -exec sed -i '.bak' 's/${{values.owner}}/team-a/g' {} \;
sed -i '.bak' 's/${{values.owner}}/team-a/g' catalog-info.yaml

sed -i '.bak' 's/com.example.${{values.java_package_name}}/rest/g'

find ./ -type f -exec sed -i '.bak' 's/${{values.java_package_name}}/rest/g' {} \;
find ./ -type f -exec sed -i '.bak' 's/${{values.http_port}}/8080/g' {} \;

rm *.bak
rm .*.bak
rm **/*.bak

