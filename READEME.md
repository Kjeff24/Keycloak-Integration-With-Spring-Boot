# KEYCLOAK INTEGRATION WITH SPRING BOOT

## USAGE
- Command to start keycloak in docker:
    - Replace admin and admin_password with your credentials.
```
docker run --name keycloak -p 8080:8080 -e KEYCLOAK_ADMIN=<admin> -e KEYCLOAK_ADMIN_PASSWORD=<admin_password> quay.io/keycloak/keycloak:24.0.2 start-dev
```