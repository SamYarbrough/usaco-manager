# usaco-manager
C++ project generator and builder for USACO

By default, builds with gcc for C++14, for old-style problems (file input/output)

### Setup:
- Clone the repo: `git clone https://github.com/SamYarbrough/usaco-manager.git`
- Optionally add an alias to `/path/to/usaco-manager/usaco.sh` in `~/.bashrc`
- Edit the template file `usaco-manager/template.cpp` to include your usaco.training ID
- Edit the build command in `usaco-manager/usaco.sh` and the language line in `usaco-manager/template.cpp` if necessary
- If `g++` isn't added to $PATH, replace `g++` in `usaco-manager/usaco.sh` with the absolute path or some other compiler

### Usage:
##### Help:
`$ usaco help [help|new|run]`
- yields some usage details for the optional second argument

##### Create a new program:
`$ usaco new program-name`
- generates a copy of the template file renamed to `program-name.cpp` and a blank file `program-name.in`
- make sure to add the given input text to `program-name.in`

##### Build, run, and read output of an existing program:
`$ usaco run program-name`
- builds `program-name` from `program-name.cpp`, runs `program-name`, and prints the contents of `program-name.out`

### Todo functionality:
- detect bad input or possible overwriting of files
- support for java/python projects
- config thru a file in `~/.config/usaco-manager/` rather than manually editing the bash script xD
- template file in `~/.config/usaco-manager/`
- default templates for newer, non-file input stream usaco problems
- automatically replace references to `template` within `template.cpp` with `program-name`
