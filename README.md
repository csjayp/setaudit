# setaudit

With setaudit it is possible to specify audit configurations on a process
directly at the runtime.

All audit events are redirected to the
[auditd(8)](https://www.freebsd.org/cgi/man.cgi?query=auditd&sektion=8),
an audit log management daemon.

## Usage

```shell
setaudit [-46] [-a auid] [-m mask] [-s source] [-p port] command ...
```
## Example

Example of enabling all exe related audit events performed by a command and its
child processes:

```shell
setaudit -m ex command
```

## Installation

setaudit can be found in the FreeBSD Ports under
[security/setaudit](https://www.freshports.org/security/setaudit):

 - `pkg install security/setaudit`
 - `cd /usr/ports/security/setaudit/ && make install clean`
