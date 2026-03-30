# CivicSage

CivicSage is a project which aims to simplify the access to domain specific knowledge management by public services. Using cutting edge AI technologies, CivicSage provides an easy way to search huge masses of data and allows for semantic search in natural language. Building on top the search results, CivicSage can generate summaries, reports and even draft responses to citizen inquiries.

### Prerequisites

- **[Docker](https://docs.docker.com/engine/install/)** and **[Docker Compose](https://docs.docker.com/compose/install/)** must be installed on your machine.
- At least **2 GB of RAM** is recommended.

### Quick start

#### 1. Clone this repository

```console
$ git clone -b civicsage-ce --single-branch https://github.com/uol-esis/CivicSage.git civicsage-ce
Cloning into 'civicsage-ce'...

$ cd civicsage-ce

$ ls -1
backend/
deployment/
frontend/
docker-compose.yaml
LICENSE
README.md
```

#### 2. Create and setup your [environment](https://docs.docker.com/compose/environment-variables/) file

```console
$ touch .env

$ echo "HTTP_PORT=<unused port>" >> .env
$ echo "BASE_URL=https://chatbot.example.com" >> .env
$ echo "DB_PASSWORD=$(openssl rand -hex 32)" >> .env
$ echo "DB_ROOT_PASSWORD=$(openssl rand -hex 32)" >> .env

$ cat .env
HTTP_PORT=...specified port...
BASE_URL=https://chatbot.example.com
DB_PASSWORD=...unique secret password...
DB_ROOT_PASSWORD=...unique secret password...
```

Make sure that $BASE_URL is set to the actual domain where the service will be hosted. This domain must have a valid DNS record pointing to your server to ensure proper name resolution.

> [!TIP]
> Note (Ubuntu / sudo): When appending to files with elevated privileges, `sudo` does not apply to shell redirection (`>>`). Use tee instead, e.g. `echo "HTTP_PORT=80" | sudo tee -a .env`

#### 3. Choose your AI models (LLM and Embedding)

##### No models avaiable: Start and setup a default modal

> [!WARNING]
> The default models are very small and therefore produce low quality results. Please consider replacing the models with suitable alternatives.

Make sure you have installed and enabled [Docker Model Runner](https://docs.docker.com/ai/model-runner/).

```console
$ docker model pull ai/smollm2
$ docker model pull ai/mxbai-embed-large

$ echo "SPRING_AI_OPENAI_BASEURL=http://host.docker.internal:12434/engines" >> .env

$ echo "SPRING_AI_OPENAI_CHAT_BASEURL=http://host.docker.internal:12434/engines" >> .env
$ echo "SPRING_AI_OPENAI_CHAT_OPTIONS_MODEL=ai/smollm2" >> .env

$ echo "SPRING_AI_OPENAI_EMBEDDING_BASEURL=http://host.docker.internal:12434/engines" >> .env
$ echo "SPRING_AI_OPENAI_EMBEDDING_OPTIONS_MODEL=ai/mxbai-embed-large" >> .env
```

##### Using existing models (highly recommended)

```console
$ echo "SPRING_AI_OPENAI_BASEURL: <https://example.com/api>" >> .env
$ echo "SPRING_AI_OPENAI_APIKEY: <sk-...>" >> .env

$ echo "SPRING_AI_OPENAI_CHAT_BASEURL: <https://example.com/api>" >> .env
$ echo "SPRING_AI_OPENAI_CHAT_APIKEY: <sk-...>" >> .env
$ echo "SPRING_AI_OPENAI_CHAT_OPTIONS_MODEL: <chat-model-id>" >> .env

$ echo "SPRING_AI_OPENAI_EMBEDDING_BASEURL: <https://example.com/api>" >> .env
$ echo "SPRING_AI_OPENAI_EMBEDDING_APIKEY: <sk-...>" >> .env
$ echo "SPRING_AI_OPENAI_EMBEDDING_OPTIONS_MODEL: <embedding-model-id>" >> .env
```

We use Spring AI internally, so it is advisable to follow the official documentation regarding [environment variables](https://docs.spring.io/spring-ai/reference/api/chat/openai-chat.html#_configuration_properties) to ensure support for edge cases as well.

#### 4. S3 storage

To make use of the object storage you need to configure the object storage and obtain the credentials as follows.

```console
$ docker compose up garage garage_config -d && docker compose logs garage_config -f

...

THE FOLLOWING KEY HAS BEEN GENERATED
================
KEY ID: <SOME_KEY_ID>
SECRET_KEY: <SOME_SECRET_KEY>
```

> [!TIP]
> The warnings that both environment variables `CIVICSAE_S3_ACCESSKEY` and `CIVICSAE_S3_SECRETKEY` are missing should be ignored in this step.

Update your `.env`:
```console
$ echo "CIVICSAGE_S3_ACCESSKEY=<SOME_KEY_ID>" >> .env
$ echo "CIVICSAGE_S3_SECRETKEY=<SOME_SECRET_KEY>" >> .env
```

#### 5. Run the application
Start the full stack with `docker compose up -d`.

#### 6. Stop the application
Stop the full stack with `docker compose down`.