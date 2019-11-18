# GitHub actions for aliyun ossutil

This action update/download/upload files from/to aliyun oss.

## Inputs

### `ossArgs`
**Required** ossArgs to run ossutil command.

### `accessKey`
**Required** accessKey to authentication.

### `accessSecret`
**Required** accessSecret to authentication.

### `endpoint`
**Optional** endpoint to run ossutil command.


## Outputs

### `command`
the final command.

## Example usage

If you use dockerhub[https://hub.docker.com],
```yaml
uses: go-choppy/ossutil-github-action@master
with:
    ossArgs: 'cp -r -u ./ oss://choppy-docs'
    accessKey: ${{ secrets.ALIYUN_ACCESS_KEY }}
    accessSecret: ${{ secrets.ALIYUN_ACCESS_SECRET }}
    endpoint: oss-cn-shanghai.aliyuncs.com
```
