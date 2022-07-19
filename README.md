# Salesforce-SOLID-Design-Principles-
From https://github.com/Coding-With-The-Force/Salesforce-SOLID-Design-Principles-Tutorial-Series

Estou fazendo este repositório para aplicar a teoria do **SOLID** design principles:

**S**ingle Responsibility Principle

**O**pen Closed Principle

**L**iskov Substitution Principle

**I**nterface Segregation Principle

**D**ependency Inversion Principle

Cada pasta do repositório será sobre uma das partes desse design.
Em breve estarei aprimorando o repositório e o traduzindo para o inglês.

![image](https://user-images.githubusercontent.com/31411689/179846322-dcabc2cb-7c73-4073-8d78-e44c38a219d5.png)

Em um breve exemplo onde a função principal deste conjunto de componentes é gerar um Objeto JSON que contém informações sobre a localização de Leads e Contatos e que deverá ser utilizado para colocar uma marcação em um mapa.

Temoos a seguinte estrutura de cima para baixo

LWCMapController - É a classe que se comunica com o componente Lightning Web Component responsável por colocar fazer o mapa, esta classe é imutável, ela não deve ser modificada pois deve estar preparada para se adaptar a todas as implementações.

UIWrapperService - É a classe que deixa o sistema aberto para extensão, ela tem dependência mínima com as classes de implementações pois as mesmas utilizam a interface, portanto utilizam métodos comuns definidos no contrato da interface e que são implementados pela WrapperService.

MapMarkerContact_Impl e MapMarkerLead_Imp - São as implementações das funcionalidades, estas classes recebem a regra de negócio para implementar situações diferentes conforme o necessário, no caso a diferença deste exemplo está nos objetos em que o mapa será utilizado.

MapMarker e MapLocation - As demais classes são simples objetos definidos que são utilizados como retorno pelas implementações.
