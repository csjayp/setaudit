# setaudit

Tool to specify audit configurations on a process.

## Usage

```shell
setaudit [-a auid] [-m mask] [-s source] [-p port] command ...
```
## Example

Enable all exe related audit events performed by a `command` and its child processes:

```shell
setaudit -m ex command
```
