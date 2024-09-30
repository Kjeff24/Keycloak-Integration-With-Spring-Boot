# KEYCLOAK INTEGRATION WITH SPRING BOOT
Configuring keycloak as an authorization server. Follow the steps to create a realm and configure identity providers such as Google and GitHub.

## USAGE
In this project, postgres was used as the database for keycloak.
Keycloak admin credentials are username/email=`admin` and password=`password`.
If you have postgres installed on your computer follow [STEP 1](#step-1) else move to [STEP 2](#step-2)
### STEP 1
- Create a database `keycloak`.
- In your root folder where you have `docker-compose-keycloak.yml`, modify the command in the keycloak service with your database credentials
- Run
```
docker-compose -f docker-compose-keycloak.yml up
```
- Move to [STEP 3](#step-3)

### STEP 2
- Command to start keycloak and postgres in docker:
```
docker-compose up
```
- Move to [STEP 3](#step-3)

### STEP 3
- After keycloak is running create a realm `demo`
![keycloak](assets/Keycloak_Administration.png)
- Create a client `spring-boot`, Valid redirect URIs `http://localhost:8081/*`, Web origins `http://localhost:8081` and ensure you have client authentication on
![client](assets/keycloak_deliverables_1.png)
![client 2](assets/keycloak_deliverables_2.png)
- Create a user for authentication and authorization into the keycloak server. Ensure you enable email verified
![create user](<assets/create_user.png>)
![create user credentials](<assets/create_user_credentials.png>)
- Add github or google as an identity provider
![Identity provider](<assets/Identity_provider.png>)
  - Ensure when creating oauth app in github or google, use the redirect uri provided by keycloak 
  - After creating the oauth app, provide the client id and client secret to your keycloak
![Identity provider 2](<assets/Identity_provider_2.png>)
- Access your configuration endpoints at `http://localhost:8080/realms/demo/.well-known/openid-configuration`
  For further information on creating realms and client checkout [Keycloak instructions](https://www.keycloak.org/getting-started/getting-started-docker
