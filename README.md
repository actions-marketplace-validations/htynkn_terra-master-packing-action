# Terra-Master packing action

GitHub Actions for packing Terra-Master tpk automaticlly.


## Terra-Master Nas

This nas allow user to build their own tpk and install it.

This action is *not* offical. 

## Inputs

### `folder-name`


**Optional** The relative path for your source code folder Default `"."`

### `arch`


**Optional** The arch for your nas Default `"x86_apps"`

### `tpk-name`


**Optional** The name for your program Default `"demo"`


## Example usage

```yaml
- uses: htynkn/terra-master-packing-action@master
  with:
    folder-name: test/
    arch: x86_apps
    tpk-name: demo
```

full example refer to [test.yml](.github/workflows/test.yml)