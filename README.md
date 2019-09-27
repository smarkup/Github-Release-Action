# Github-Release-Action
Publish Github releases

## Usage

```yaml
name: Publish Release
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Create a GitHub Release
      uses: smarkup/Github-Release-Action@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        GITHUB_USER: ${{ github.actor }}
        GIT_TAG: '0.1.0'
        RELEASE_ASSET_PATH: app-release.zip
        PUBLISH_RELEASE: false

```
