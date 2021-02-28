## UbiOps 

This is a package to interact with the ubiOps api. 

I've generated a first version of all documentation and code purely extracted
from the SWAGGER api. <https://api.ubiops.com/v2.1/swagger/> 
So it is a lot of text. 
I've implemented every single api endpoint but 


In a next sweep I made sure the code was working. 

I've created a few tests to make sure basic funcitonality was working.


To connect to the API you need a ubiops account and a key. 
I recommend adding your key to your .Renviron file. `usethis::edit_r_environ()`


endpoints checked

- [ ] organizations
- [ ] permissions
- [ ] projects
- [x] status 
- [ ] user

