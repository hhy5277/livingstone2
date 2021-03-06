global pirNodes
set pirNodes {139 1 2 4 6 8 10}
global pirNode
set pirNode(139) {edgesFrom {{}} edgesTo {{}} numArgsVars 0 argsValues {} attributes ?name.displayState port_terminals {} output_terminals ?name.pipeOut input_terminals ?name.pipeIn nodeInstanceName ?name nodeState ok nodeStateBgColor gray90 nodeClassName thruster numInputs 1 numOutputs 1 fgColor black nodeGroupName root parentNodeGroupList root nodeClassType component inputs {in1 {type {pipe in} terminal_name ?name.pipeIn terminal_label {} commandMonitorType {monitored {unknown unknown unknown unknown}} interfaceType public}} outputs {out1 {type {pipe out} terminal_name ?name.pipeOut terminal_label {} commandMonitorType {monitored {unknown unknown unknown unknown}} interfaceType public}} transitionModesToDraw {} nodeHasIconP 1 displayStatePropName ?name.displayState instanceLabel {} nodeX 100 nodeY 100 labelX 100 labelY 75 window .master.canvas.root.c.w2}

set pirNode(1) {nodeGroupName ?name edgesFrom {} edgesTo {} nodeInstanceName root_P4 nodeState parent-link nodeStateBgColor gray90 nodeClassName thruster numInputs 0 numOutputs 0 fgColor black nodeClassType module inputs {} outputs {} parentNodeGroupList {?name root} nodeX 5 nodeY 5 labelX -1 labelY -1 window .master.canvas.?name.c.w5 nodeHasIconP 0}

set pirNode(2) {edgesFrom {} edgesTo {} nodeGroupName ?name numArgsVars 0 argsValues {} outputs {} numOutputs 0 inputs {} numInputs 0 probability unknownFaultRank model {{}} nodeDescription {} nodeClassType mode nodeInstanceName ?name.unknownFault nodeState {} nodeStateBgColor red1 nodeClassName faultMode fgColor black instanceLabel {} parentNodeGroupList {?name root} nodeHasIconP 1 nodeX 540 nodeY 230 labelX 535 labelY 205 window .master.canvas.?name.c.w6}

set pirNode(4) {edgesFrom {} edgesTo {} nodeGroupName ?name numArgsVars 0 argsValues {} outputs {} numOutputs 0 inputs {} numInputs 0 model {{this.pipeIn.equal(this.pipeOut);}} nodeDescription {} nodeClassType mode nodeInstanceName ?name.ok nodeState {} nodeStateBgColor lightgreen nodeClassName okMode fgColor black instanceLabel {} parentNodeGroupList {?name root} nodeHasIconP 1 nodeX 320 nodeY 230 labelX 327 labelY 205 window .master.canvas.?name.c.w8}

set pirNode(6) {edgesFrom {{}} edgesTo {} nodeGroupName ?name numArgsVars 0 argsValues {} outputs {out1 {type {displayStateValues out} terminal_name ?name.displayState terminal_label displayState}} numOutputs 1 inputs {} numInputs 0 facts {{if (mode = ok)
  this.displayState = ok;
else
  this.displayState = unknown;}} nodeDescription {} nodeClassType attribute nodeInstanceName ?name.displayState nodeState {} nodeStateBgColor orange nodeClassName displayState fgColor black instanceLabel displayState parentNodeGroupList {?name root} nodeHasIconP 1 nodeX 50 nodeY 240 labelX 27 labelY 215 window .master.canvas.?name.c.w10}

set pirNode(8) {edgesFrom {{}} edgesTo {} nodeGroupName ?name numArgsVars 0 argsValues {} outputs {out1 {type {pipe out} terminal_name ?name.pipeIn terminal_label {} commandMonitorType {monitored {unknown unknown unknown unknown}} interfaceType public}} numOutputs 1 inputs {} numInputs 0 nodeDescription {} nodeClassType terminal nodeInstanceName ?name.pipeIn nodeState {} nodeStateBgColor gray90 nodeClassName input fgColor black instanceLabel {} parentNodeGroupList {?name root} nodeHasIconP 1 inheritedCmdMonP 1 nodeX 440 nodeY 90 labelX 429 labelY 65 window .master.canvas.?name.c.w12}

set pirNode(10) {edgesFrom {} edgesTo {{}} nodeGroupName ?name numArgsVars 0 argsValues {} outputs {} numOutputs 0 inputs {in1 {type {pipe in} terminal_name ?name.pipeOut terminal_label {} commandMonitorType {monitored {unknown unknown unknown unknown}} interfaceType public}} numInputs 1 nodeDescription {} nodeClassType terminal nodeInstanceName ?name.pipeOut nodeState {} nodeStateBgColor gray90 nodeClassName output fgColor black instanceLabel {} parentNodeGroupList {?name root} nodeHasIconP 1 inheritedCmdMonP 1 nodeX 430 nodeY 390 labelX 416 labelY 365 window .master.canvas.?name.c.w14}

global pirEdges
set pirEdges {}
global pirEdge
global pirClasses
set pirClasses {thruster faultMode okMode displayState input output}
global pirClass
set pirClass(thruster) {nodeClassType component inputs {} outputs {} class_variables {name_var {default ?name} args {default {}} documentation {default {}} input_terminals {default {{pipe ?name.pipeIn {}}}} output_terminals {default {{pipe ?name.pipeOut {}}}} port_terminals {default {}} attributes {default {{displayStateValues ?name.displayState displayState}}} mode {default ok} ok_modes {default ok} fault_modes {default unknownFault} mode_transitions {default {}} background_model {default {}} background_documentation {default {}} initially {default {}} initial_mode {default ok} recovery_modes {default {}} argTypes {default {}}}}

set pirClass(faultMode) {cfg_file faultMode.cfg mode_class faultMode class_variables {name_var {default {}} args {default {}} input_terminals {default { {nil}}} output_terminals {default { {nil}}} port_terminals {default { {nil}}} mode {default {}} ok_modes {default {}} fault_modes {default {}}} nodeClassType mode}

set pirClass(okMode) {cfg_file okMode.cfg mode_class okMode class_variables {name_var {default {}} args {default {}} input_terminals {default { {nil}}} output_terminals {default { {nil}}} port_terminals {default { {nil}}} mode {default {}} ok_modes {default {}} fault_modes {default {}}} nodeClassType mode}

set pirClass(displayState) {cfg_file displayState.cfg attribute_class displayState class_variables {name_var {default {}} args {default {}} input_terminals {default { {nil}}} output_terminals {default { {nil}}} port_terminals {default { {nil}}} mode {default {}} ok_modes {default {}} fault_modes {default {}}} nodeClassType attribute}

set pirClass(input) {cfg_file input.cfg terminal_class input class_variables {name_var {default {}} args {default {}} input_terminals {default { {nil}}} output_terminals {default { {nil}}} port_terminals {default { {nil}}} mode {default {}} ok_modes {default {}} fault_modes {default {}}} nodeClassType terminal}

set pirClass(output) {cfg_file output.cfg terminal_class output class_variables {name_var {default {}} args {default {}} input_terminals {default { {nil}}} output_terminals {default { {nil}}} port_terminals {default { {nil}}} mode {default {}} ok_modes {default {}} fault_modes {default {}}} nodeClassType terminal}

global g_NM_livingstoneDefcomponentFileName
set g_NM_livingstoneDefcomponentFileName {thruster}
global g_NM_livingstoneDefcomponentName
set g_NM_livingstoneDefcomponentName {thruster}
global g_NM_livingstoneDefcomponentNameVar
set g_NM_livingstoneDefcomponentNameVar {?name}
global g_NM_livingstoneDefcomponentArgList
set g_NM_livingstoneDefcomponentArgList {}
global g_NM_livingstoneDefcomponentArgTypeList
set g_NM_livingstoneDefcomponentArgTypeList {}
