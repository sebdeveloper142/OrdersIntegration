Hi!

I have created an integration solution commonly occuring in live scenarios. The flow is exposed on both the inbound and outbound side through
API Management. The message is led through a logic app surrounded by Service Busses as displayed in the diagram below. Both the API Management, the Lopic App and the Service Buses is deployable via Azure DevOps.

![image](https://user-images.githubusercontent.com/100699250/184429405-9b576c04-eb41-4359-a366-29083eace317.png)

The Logic App contains a message mapping converting a pure EDI message (x12 format) to XML and mapping a selection of fields. The EDI template
used in this scenario is X12_00401_850.

You need to create an integration account in order to get the mapping to work. You also have to store the xslt mapping and the xsd files in the integration account. 
More information regarding mapping can be found here: https://www.tech-findings.com/2020/03/getting-started-with-logic-apps-edi-x12-to-xml.html

I used policies to connect the API Managment services to the service buses. It is up to you to generate the SAS token for both the service bus queues, besides that
it should be enough to just deploy the API management and the polocies should make the rest work. More info on how to set that up is found here
https://joeblogs.technology/2021/07/posting-to-azure-service-bus-from-api-management/
