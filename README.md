# setaudit
Tool to specify audit configurations on a process

## Usage

```shell
usage: ./setaudit [-a auid] [-m mask] [-s source] [-p port] command ...
```
## Example

Enable all exe related audit events performed by `command` and it's child processes

```shell
sudo ./setaudit -m ex command
```
