#!/usr/bin/env cwl-runner

class: Workflow
id: "helloworld-checker"
label: "Hello world checker"

cwlVersion: v1.0

$namespaces:
  dct: http://purl.org/dc/terms/
  foaf: http://xmlns.com/foaf/0.1/

dct:creator:
  foaf:name: Gary Luu
  foaf:mbox: "mailto:gary.luu@oicr.on.ca"

requirements:
 - class: SubworkflowFeatureRequirement

inputs:
  knowngood_file: File
  input_file: File
  template_file: File

outputs:
  results_file:
    type: File
    outputSource: validation/results_file
  log_file:
    type: File
    outputSource: validation/log_file

steps:
  helloworld:
    run: hello_world.cwl
    in: 
      input_file: input_file
      template_file: template_file
    out: [output_file]
  validation:
    run: hello_world_validation.cwl
    in:
      knowngood_file: knowngood_file
      helloworld_file: helloworld/output_file
    out: [results_file, log_file]
