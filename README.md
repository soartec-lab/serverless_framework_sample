# serverless_framework_sample
Consideration of development sample and file structure with `serverless framework`

# Setup

```
$ docker-comopse build
$ docker-compose up -d
$ docker-compose exec serverless bash
$ yarn sls invoke local -f hello
yarn run v1.22.5
warning package.json: No license field
/serverless/node_modules/.bin/sls invoke local -f hello

{
    "statusCode": 200,
    "body": "{\"message\": \"Go Serverless v1.0! Your function executed successfully!\", \"input\": {}}"
}

Done in 20.00s.
```

# Enviroments

```
$ yarn -v
1.22.5

$ python -V
Python 3.8.8

$ yarn sls -v
Framework Core: 2.25.2 (local)
Plugin: 4.4.3
SDK: 2.3.2
Components: 3.7.0
```

