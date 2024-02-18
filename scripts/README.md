# scripts

These are designed for CloudFlare Pages

https://developers.cloudflare.com/pages/configuration/build-configuration/

https://developers.cloudflare.com/pages/configuration/language-support-and-tools/

Root README.md

- gen off the Control Plane using a local git hook that runs on a commit. The control plane knows all relationships.

Build.sh

- Package.json always deletes all .env files and create a single .env file. This we cant do a local build because the build causes the package.json to delete the environment files. Architeczure options:
  - gen the secrets off the control Plane at CI time, like what other hyperscalars do. 
    - this makes it possibel for devs to ask the Control Plane to rotate all secrets, because it knows what uses what. For example its know the DB connection string, and so can change it and gen the Secrets for any apps that use it. THis is only possible due ot the real time system.  
  - encrypt all the secrets for all the environments off the Org Secret ( stored in the Control Plane ) and have the build use the appropriate .env, without deleting the others. 
    - Devs can connect to any environemnt, without knowing the secrets, but maybe an Org does not want its devs to be able to do this ? Yes they do not. Need Chinese walls.


