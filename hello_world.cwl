cwlVersion: v1.0
class: Workflow

doc: |
  Hello
  ```
  code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code
  break
  code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code
  code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code code

  ```

  <a href="https://github.com/Richard-Hansen/hello_world/new/master">click me!</a>

  More descriptions, testing for custom name

inputs:
  input_file: File
  template_file: File

outputs:
  output_file:
    type: File
    outputSource: hello-world/output

steps:
  hello-world:
    run: dockstore-tool-helloworld.cwl
    in:
      input_file: input_file
      template_file: template_file
    out: [output]
  hello-world2:
    run: dockstore-tool-helloworld2.cwl
    in:
      input_file: input_file
      template_file: template_file
    out: [output]
