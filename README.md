<h2 align="center">GitHub actions for aliyun ossutil</h2>
<p align="center">update/download/upload files from/to aliyun oss</p>

<p align="center">Jingcheng Yang [yjcyxky@163.com]</p>

<p align="center">
<img src="https://github.com/go-choppy/ossutil-github-action/workflows/.github/workflows/test.yml/badge.svg" alt="Build Status">
<img src="https://img.shields.io/github/license/go-choppy/ossutil-github-action.svg" alt="License">
</p>

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

```yaml
uses: go-choppy/ossutil-github-action@master
with:
    ossArgs: 'cp -r -u ./ oss://choppy-docs'
    accessKey: ${{ secrets.ALIYUN_ACCESS_KEY }}
    accessSecret: ${{ secrets.ALIYUN_ACCESS_SECRET }}
    endpoint: oss-cn-shanghai.aliyuncs.com
```
