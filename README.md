# DatSciTrain_napmd_api_demo
Anh Han, Cassandra Yuen and Ivan Hanigan

2024-11-19

CARDAT's NAPMD API Training

## Instruction to for using API key
1. run create_api_key() in the Console.
2. get your username and password from the data curator.
3. use this to read it into your session `api_key <- yaml::read_yaml('private/api_key.yaml')`
4. use this in the functions, e.g.
    `list_air_pollution_monitors(state = 'NSW', username = api_key$username, password = api_key$password)`
