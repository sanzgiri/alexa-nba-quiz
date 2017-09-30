rm -f index.zip
cd lambda
zip -X -r ../index *
cd ..
aws configure set region us-east-1
aws lambda update-function-code --function-name NBATriviaGame --zip-file fileb://index.zip
