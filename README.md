# MkDocs Container
This is an example in how to create a documentation website for a project using a containerized [MkDocs](https://github.com/mkdocs/mkdocs).  
The container contains a couple [MkDocs Plugins](https://github.com/mkdocs/catalog):
- [mkdocs-minify-plugin](https://github.com/byrnereese/mkdocs-minify-plugin)
- [mkdocstrings](https://github.com/mkdocstrings/mkdocstrings) (For Python and Shell Code)
- [mkdocs-render-swagger-plugin](https://github.com/bharel/mkdocs-render-swagger-plugin)

These plugins allow displaying Code via Docstrings and Swagger within the documentation website.  
The used example Python Code can be found [here](https://github.com/sphinx-contrib/napoleon/blob/master/docs/source/example_google.py)  
The Swagger example source can be found [here](https://petstore.swagger.io).


## Usage
```bash
docker run -it --rm -d --name mkdocs -p 8000:8000 -v ${PWD}/project:/project mkdocs
```
http://localhost:8000/


### Troubleshooting
- MkDocs only recognize 4 Spaces indentation and not 2
- Braking changes in the Markdown Files may make the Container crash
