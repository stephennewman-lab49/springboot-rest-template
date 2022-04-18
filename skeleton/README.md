${{values.java_package_name}}.${{values.component_id}};
=====
Backstage templated application to generate a spring boot Restful microservice deployed to kubernetes.

Expressions such as '${{values.component_id}}' will be replaced by supplied during creation of an implementation of the template.



java_package_name: ${{ values.java_package_name }}
component_id: ${{ values.component_id }}
description: ${{ values.description }}
artifact_id: ${{ values.component_id }}
owner: ${{ values.owner }}
destination: ${{ values.repoUrl | parseRepoUrl }}
description ${{values.description}}

