#
# ----------------------------------------------------------------------
#
# Declarations
#
# ----------------------------------------------------------------------
#

#
# declaration for Interface ::LivingstoneCorba::LivingstoneEngineManager
#

class ::LivingstoneCorba::LivingstoneEngineManager {
    inherit ::PortableServer::ServantBase

    public method _Interface {} {
        return "IDL:LivingstoneCorba/LivingstoneEngineManager:1.0"
    }

    public method describe {}
    public method getCommandLine {search_method max_candidate_classes_returned max_candidates_returned max_candidates_searched max_cutoff_weight max_history_cutoff max_trajectories_tracked progress_cmd_type fc_cmd_type}
    public method getRunningCommandLine {}
    public method exit {}
}

#
# declaration for Interface ::LivingstoneCorba::LivingstoneCommandLine
#

class ::LivingstoneCorba::LivingstoneCommandLine {
    inherit ::PortableServer::ServantBase

    public method _Interface {} {
        return "IDL:LivingstoneCorba/LivingstoneCommandLine:1.0"
    }

    public method command {command}
    public method getHistoryTimes {}
    public method enableGUIUpdate {}
    public method disableGUIUpdate {}
    public method warpCommands {commands}
    public method release {}
    public method addLivingstoneEventListener {listener}
    public method removeLivingstoneEventListener {listener}
}

#
# declaration for Interface ::LivingstoneCorba::LivingstoneEventListener
#

class ::LivingstoneCorba::LivingstoneEventListener {
    inherit ::PortableServer::ServantBase

    public method _Interface {} {
        return "IDL:LivingstoneCorba/LivingstoneEventListener:1.0"
    }

    public method start {}
    public method reportVariables {attributes}
    public method newState {time stateID transition assignments}
    public method viewState {time stateID transition assignments}
    public method asynchronousMsg {state msg}
    public method finish {}
    public method startReplay {}
    public method finishReplay {}
    public method gotCandidates {num}
    public method gotInstallCandidate {index}
    public method gotAssignment {monitor}
    public method gotProgress {command}
    public method getModules {}
    public method loadModule {moduleName}
    public method getWorkSpaces {}
    public method loadWorkSpace {workspace}
    public method metaDot {nodeClassType instanceName dialogType modeName}
    public method getInstances {nodeClassType componentInstanceName}
}

#
# ----------------------------------------------------------------------
#
# code for Interface ::LivingstoneCorba::LivingstoneEngineManager
#
# ----------------------------------------------------------------------
#

#
# operation describe
#
#   returns:
#     string
#

body ::LivingstoneCorba::LivingstoneEngineManager::describe {} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneEngineManager::describe"
}

#
# operation getCommandLine
#
#   parameters:
#     search_method: in string
#     max_candidate_classes_returned: in long
#     max_candidates_returned: in long
#     max_candidates_searched: in long
#     max_cutoff_weight: in long
#     max_history_cutoff: in long
#     max_trajectories_tracked: in long
#     progress_cmd_type: in string
#     fc_cmd_type: in string
#
#   returns:
#     IDL:LivingstoneCorba/LivingstoneCommandLine:1.0 object reference
#

body ::LivingstoneCorba::LivingstoneEngineManager::getCommandLine {search_method max_candidate_classes_returned max_candidates_returned max_candidates_searched max_cutoff_weight max_history_cutoff max_trajectories_tracked progress_cmd_type fc_cmd_type} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneEngineManager::getCommandLine"
}

#
# operation getRunningCommandLine
#
#   returns:
#     IDL:LivingstoneCorba/LivingstoneCommandLine:1.0 object reference
#

body ::LivingstoneCorba::LivingstoneEngineManager::getRunningCommandLine {} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneEngineManager::getRunningCommandLine"
}

#
# operation exit
#
#   returns:
#     void
#

body ::LivingstoneCorba::LivingstoneEngineManager::exit {} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneEngineManager::exit"
}

#
# ----------------------------------------------------------------------
#
# code for Interface ::LivingstoneCorba::LivingstoneCommandLine
#
# ----------------------------------------------------------------------
#

#
# operation command
#
#   parameters:
#     command: in string
#
#   returns:
#     void
#

body ::LivingstoneCorba::LivingstoneCommandLine::command {command} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneCommandLine::command"
}

#
# operation getHistoryTimes
#
#   returns:
#     string
#
#   raises:
#     IDL:LivingstoneCorba/LivingstoneException:1.0
#

body ::LivingstoneCorba::LivingstoneCommandLine::getHistoryTimes {} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneCommandLine::getHistoryTimes"
}

#
# operation enableGUIUpdate
#
#   returns:
#     void
#

body ::LivingstoneCorba::LivingstoneCommandLine::enableGUIUpdate {} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneCommandLine::enableGUIUpdate"
}

#
# operation disableGUIUpdate
#
#   returns:
#     void
#

body ::LivingstoneCorba::LivingstoneCommandLine::disableGUIUpdate {} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneCommandLine::disableGUIUpdate"
}

#
# operation warpCommands
#
#   parameters:
#     commands: in string
#
#   returns:
#     void
#

body ::LivingstoneCorba::LivingstoneCommandLine::warpCommands {commands} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneCommandLine::warpCommands"
}

#
# operation release
#
#   returns:
#     void
#

body ::LivingstoneCorba::LivingstoneCommandLine::release {} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneCommandLine::release"
}

#
# operation addLivingstoneEventListener
#
#   parameters:
#     listener: in IDL:LivingstoneCorba/LivingstoneEventListener:1.0 object reference
#
#   returns:
#     void
#
#   raises:
#     IDL:LivingstoneCorba/LivingstoneException:1.0
#

body ::LivingstoneCorba::LivingstoneCommandLine::addLivingstoneEventListener {listener} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneCommandLine::addLivingstoneEventListener"
}

#
# operation removeLivingstoneEventListener
#
#   parameters:
#     listener: in IDL:LivingstoneCorba/LivingstoneEventListener:1.0 object reference
#
#   returns:
#     void
#
#   raises:
#     IDL:LivingstoneCorba/LivingstoneException:1.0
#

body ::LivingstoneCorba::LivingstoneCommandLine::removeLivingstoneEventListener {listener} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneCommandLine::removeLivingstoneEventListener"
}

#
# ----------------------------------------------------------------------
#
# code for Interface ::LivingstoneCorba::LivingstoneEventListener
#
# ----------------------------------------------------------------------
#

#
# operation start
#
#   returns:
#     void
#

body ::LivingstoneCorba::LivingstoneEventListener::start {} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneEventListener::start"
}

#
# operation reportVariables
#
#   parameters:
#     attributes: in struct LivingstoneAttributeReport
#
#   returns:
#     void
#

body ::LivingstoneCorba::LivingstoneEventListener::reportVariables {attributes} {
    #
    # Add implementation here
    #

    error "Unimplemented method ::LivingstoneCorba::LivingstoneEventListener::reportVariables"
}

#
# operation newState
#
#   parameters:
#     time: in