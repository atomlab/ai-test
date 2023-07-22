# ai-test

Clone this repo

```
https://github.com/atomlab/ai-test.git
```

Go to directory
```
cd ./ai-test
```

Build a base docker image with required dependencies
```

docker build -t ai-test -f ./Dockerfile .
```

Clone a repository with AI models

```
git clone https://huggingface.co/gpt2
```

Run the ai-test.py script

```
docker run --rm -it -v ${PWD}/gpt2:/app -v ${PWD}/ai-test.py:/app/ai-test.py ai-test python ai-test.py
```