# CivicSage

CivicSage is a project which aims to simplify the access to domain specific knowledge management by public services. 
Using cutting edge AI technologies, CivicSage provides an easy way to search huge masses of data and allows for semantic
search in natural language. Building on top the search results, CivicSage can generate summaries, reports and even draft
responses to citizen inquiries.

Check out the subdirectories for more information about the different components of CivicSage!


## Deployment

CivicSage provides a deployment script which downloads all required files to start the application.

### Prerequisites

- Docker (compose)
- Docker Model Runner

```bash
curl -o deploy.sh https://raw.githubusercontent.com/uol-esis/civicsage/main/deployment/deploy.sh
chmod +x deploy.sh
./deploy.sh
```

Now follow the instructions in the terminal to complete the setup.

