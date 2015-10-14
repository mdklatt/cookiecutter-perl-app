""" Perform post-generation tasks.

This is executed in the new project directory. Before execution it is rendered 
with the template engine, so it has access to all template variables.

"""
from os import makedirs
from os import rename
from os.path import join


def make_source(repo):
    """ Crete the source directory under lib/.
    
    """
    namespace, module = repo.split("-")
    root = join("lib", namespace)
    makedirs(root)
    rename(repo + ".pm", join(root, module + ".pm"))
    return


def main():
    """ Execute all tasks. 
    
    """
    make_source("{{ cookiecutter.repo_name }}")
    return 0


# Make the script executable from the command line.

if __name__ == "__main__":
    raise SystemExit(main())
