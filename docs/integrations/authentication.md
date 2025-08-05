# Authentication

One should choose the authentication method to be used for WINGMAN. Our currently supported authentication methods are:
- WINGMAN built in authentication
- SSO (Single Sign-On) authentication with Google 
- SSO (Single Sign-On) authentication with Azure AD
- Custom SSO options with OpenID Connect

## WINGMAN built in authentication

This method allows creation of users who can log in with username and password. At the moment additional factors are not available for this authentication method and it is not recommended to use this method for production environments.

The usernames and passwords would have to be set by Peak Defence team upon account creation in WINGMAN. Your username normally here would be your email address.

## SSO (Single Sign-On) authentication with Google

This method allows users to log in with their Google account. It is recommended to use this method for production environments.

This method is the easiest to set up and use. We would only need to know your organizational domain name (e.g. example.com). We would also need to know if you want to use Google Workspace or Google Consumer. This is only possible with custom domain Google Authentication accounts.

The setup is done by Peak Defence team upon account creation in WINGMAN

## SSO (Single Sign-On) authentication with Azure AD

This method allows users to log in with their Azure AD account. It is recommended to use this method for production environments. This method is easy to set up and use. We would only need to know your organizational domain name used in Azure AD (e.g. example.com). 

The setup is done by Peak Defence team upon account creation in WINGMAN.

## Custom SSO options with OpenID Connect

This method allows users to log in with their OpenID Connect account. It is recommended to use this method for production environments.

The setup is done by Peak Defence team upon account creation in WINGMAN.
