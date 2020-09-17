#!/bin/bash

curl -X  GET http://dummy.restapiexample.com/api/v1/employee/2 | tac | tac | grep -Po '"data":.*?[^\\]",' >> .env