# Halojasa Technical Test
### Position: Devops
### Duration: 8 Hours

## Material Checklist
- [ ] Run service on docker and forward to port 80
- [ ] Automation to get env variable from API
- [ ] Build and Deploy to Heroku with CI/CD

## Instruction
### Run service on docker and forward to port 80
1. The first step is make sure if our nodejs service can run on docker
2. To run service, you can execute `npm start` and service will be run on port `3000`
3. Create `docker-compose.yaml`. So if developers wants to code, developer can run `docker-compose up`. Everytime developer change their code. It should be automaticaly update/refresh on docker.
4. By default service will be used port `3000`. When run under docker, service should be can accessible via port `80`

When you access service through docker, you should receive this response:
```
{
  "status": "success",
  "employee_name": "get name from api"
}
```
--- 

### Automation to replace env variable from API
We have 2 environment: Dev and and Production. We always adopt `Single Truth of Source`. When we deploy the service to dev server, it should get env variable from API and replace `.env` with new `env` from API. Just take `data.employee_name` property.

API: `http://dummy.restapiexample.com/api/v1/employee/2`

API Response
```
{
  "status": "success",
  "data": {
    "id": 2,
    "employee_name": "Garrett Winters",
    "employee_salary": 170750,
    "employee_age": 63,
    "profile_image": ""
  },
  "message": "Successfully! Record has been fetched."
}
```

Some clue and instruction:
1. Create docker entry point to get environment variable form API
2. Do some coding there. you can use any programming language. Better if you use bash scripting
3. When you execute the entry point. It will call the API above and replace existing `.env` file with new `.env` file that has `employee_name` value from the API.
4. When you access service through docker, you should receive this response:
```
{
  "status": "success",
  "employee_name": "Garrett Winters"
}
```
---
### Build Docker and Upload to Service Registry

Build the image and upload it to docker container registry. You can choose one between Docker Registry, Github contaier registry, or GitLab Registry and make them as public. To automate them, please create CI/CD.

For CI/CD, you can use any CI/CD tools.

---
## Submission
Upload your project to Github/GitLab. Give a clear instruction on `Readme` file. Have a Good commit message and increment will be plus. Send your submission to reynaldi@halojasa.id

# GOOD LUCK!