# Release actions-create-environment

Add creating a Release Staging Environment to your existing Github Actions pipelines. By passing in the app you want to create the environment for and the Docker images to to use, you have full control over what is created. Additionally by adding a branch, you're able to continually update the same environment as you push code changes.

[Create A Staging Environment Documentation](https://docs.releaseapp.io/api-documentation/release-api/create-a-staging-environment)

[Release API Authentication Documentation](https://app.gitbook.com/@releaseapp-release/s/release/api-documentation/release-api/authentication)


## API Definition

```
POST api.releaseapp.io/api/environments
headers: 
 - [X-Account-Token]
 - [X-Account-ID]
body: 
{
 ** required **
  "app_id": 1,
  "branch": "branch",
  "services": {
    "service_name": "image_name"
  },
 ** optional **
 "commit_short": "1234567",
 "commit_long": "1234567890abcdefghijklmnopqrstuvwxy12345"
 "committer": "name@email.com",
 "commit_message": "message",
 "commit_date": "YYYY-MM-DD HH:MM:SS -0700",
 "logs": [{"level": "info" || "error", "message": "asdf"}]
}
```

## Example Usage
```

```
