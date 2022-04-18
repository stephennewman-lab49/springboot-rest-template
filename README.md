# springboot-rest-template

[springboot-rest-template](https://github.com/stephennewman-lab49/springboot-rest-template)

backstage template to create a spring boot rest microservice deployed to k8s, accessed through kong gateway



based upon the [springboot-grpc-template](https://github.com/backstage/software-templates/tree/main/scaffolder-templates/springboot-grpc-template)


https://backstage.io/docs/getting-started/


backstage tutorial
running locally on my mac

@stephennewman-lab49
stephennewman-lab49 owns this application.

Client ID
13f35c1a464a45774841

eada55433d25bf651e1a63e08b16d6ed850b9717

pat
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

environment: development
  providers:
    github:
      development:
        clientId: 13f35c1a464a45774841
        clientSecret: eada55433d25bf651e1a63e08b16d6ed850b9717


integrations:
  github:
    - host: github.com
      token: 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



    - type: url
      target: https://github.com/stephennewman-lab49/springboot-rest-template/blob/main/template.yaml
      rules:
        - allow: [Template]





stephen.newman@C02G92NLQ05N bstage % pwd
/Users/stephen.newman/git/bstage

yarn dev

http://localhost:3000/create?filters%5Bkind%5D=template&filters%5Buser%5D=all



created https://github.com/stephennewman-lab49/https-github.com-stephennewman-lab49-backstage-spring-boot-grpc



todo
=====
include mvnw in temolate
name of repository : https-github.com-stephennewman-lab49-backstage-spring-boot-grpc
java package package com.example.demo;




=====
was having trouble displaying updated contents in available templates and then wouldn't display my template, due to 

[1] 2022-04-18T21:54:07.679Z catalog warn Unable to read url, Error: https://github.com/stephennewman-lab49/springboot-rest-template/tree/main/template.yaml could not be read as https://api.github.com/repos/stephennewman-lab49/springboot-rest-template/contents/template.yaml?ref=main, 401 Unauthorized type=plugin entity=location:default/generated-1a93ad2818889ee034472d7deb4a42be5625f79f

so setup github security in backstage again

https://github.com/settings/applications/new


Client ID
17a2a642685553c505d2
Client secrets
Make sure to copy your new client secret now. You won’t be able to see it again.

Client secret
 a36d477265d7820f66196d513e1da659d90bd745 
Added now by stephennewman-lab49
Never used
You cannot delete the only client secret. Generate a new client secret first.


https://github.com/settings/tokens/new
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

