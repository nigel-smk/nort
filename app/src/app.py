import os
import subprocess
import click
import toml

APP_NAME = 'nort' #TODO what use is this?

def read_config():
    config_path = 'config.toml'
    with open(config_path, 'r') as f:
        return toml.loads(f.read())


@click.command()
def nort():
    config = read_config()
    # TODO figure out destructuring in python
    directories = config['directories']
    subprocess.run(['fdupes', directories['staging'], directories['archive'], '-d'])


if __name__ == '__main__':
    nort()