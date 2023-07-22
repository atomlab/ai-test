# The simplest way to test AI

**Requirements**
- Installed docker
- Installed [git-lfs](https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage?platform=linux)

**Setup**

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

Clone a repository with AI models. It may take some time to load large files with models.

For example, take model https://huggingface.co/gpt2. Full size 5-6GB

```
git lfs install
git clone https://huggingface.co/gpt2
```

If you want to clone without large files – just their pointers prepend your git clone with the following env var:
```
GIT_LFS_SKIP_SMUDGE=1
``````

Run the ai-test.py script

```
docker run --rm -it \
  -v ${PWD}/gpt2:/app \
  -v ${PWD}/ai-test.py:/app/ai-test.py \
  ai-test \
  python ai-test.py
```

Output
```
{'generated_text': "Hello, I'm a language model, I'm writing a new language for you. But first, I'd like to tell you about the language itself"}
{'generated_text': "Hello, I'm a language model, and I'm trying to be as expressive as possible. In order to be expressive, it is necessary to know"}
{'generated_text': "Hello, I'm a language model, so I don't get much of a license anymore, but I'm probably more familiar with other languages on that"}
{'generated_text': "Hello, I'm a language model, a functional model... It's not me, it's me!\n\nI won't bore you with how"}
{'generated_text': "Hello, I'm a language model, not an object model.\n\nIn a nutshell, I need to give language model a set of properties that"}
```