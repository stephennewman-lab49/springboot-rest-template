${{values.java_package_name}}.${{values.component_id}}
=====
Backstage templated application to generate a spring boot Restful microservice deployed to kubernetes.

Expressions such as '${{values.component_id}}' will be replaced by supplied during creation of an implementation of the template.

Available runtime values
- java_package_name: ${{ values.java_package_name }}
- component_id: ${{ values.component_id }}
- description: ${{ values.description }}
- artifact_id: ${{ values.component_id }}
- owner: ${{ values.owner }}
- description ${{values.description}}
- destination owner/repo ${{values.destination.owner + "/" + values.destination.repo}}

### the process

in backstage
1) from menu select Create... which shows page Create a New Component
2) choose Spring Boot Rest Service template
3) enter values across several steps
4) choose create: this generates a new github repository https://github.com/${{values.destination.owner + "/" + values.destination.repo}}.git containing the skeleton project with runtime values substituted.
on laptop
5) clone the generated project locally, develop the microservice wanted, commit and push back to git repository
back in backstage
6) somehow build and deploy the microservice to k8s



### build and run the generated project

```bash
git clone https://github.com/${{values.destination.owner + "/" + values.destination.repo}}.git

./mvnw spring-boot:run


curl localhost:8080/greeting

{"id":1,"content":"Hello, World!"}

curl  http://localhost:8080/greeting?name=stephen

{"id":2,"content":"Hello, stephen!"}

curl  http://localhost:8080/actuator

{"_links":{"self":{"href":"http://localhost:8080/actuator","templated":false},"health-path":{"href":"http://localhost:8080/actuator/health/{*path}","templated":true},"health":{"href":"http://localhost:8080/actuator/health","templated":false},"info":{"href":"http://localhost:8080/actuator/info","templated":false}}}

```
