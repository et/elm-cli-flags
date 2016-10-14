module Main exposing (main)

import Ports
import Model exposing (Flags, Model, Msg(Start))
import Regex exposing (contains, regex)
import Update
import Worker


type Flag
  = ArgumentFlag
  | BooleanFlag
  | ShortFlag
  | PositionalFlag


argumentRegex = regex "--(\\w|-)+=\\w+$" --- --num-threads=3
booleanRegex = regex "--\\w+$"           --- --verbose
shortRegex = regex "-\\w$"               --- -h

flagMatcher : String -> Flag
flagMatcher flag =
    if contains argumentRegex flag then ArgumentFlag
    else if contains booleanRegex flag then BooleanFlag
    else if contains shortRegex   flag then ShortFlag
    else PositionalFlag


parseFlag : String -> String
parseFlag flag =
    case flagMatcher flag of
      ArgumentFlag ->
        "Argument flag"
      BooleanFlag ->
        "Boolean flag"
      ShortFlag ->
        "Short flag"
      PositionalFlag ->
        "Positional flag"

parseArgs : List String -> List String
parseArgs args =
    List.map parseFlag args


main : Program Flags
main =
    Worker.programWithFlags Ports.debugModel
        { init = init
        , update = Update.update
        , subscriptions = subscriptions
        }


init : Flags -> ( Model, Cmd Msg )
init flags =
    let
        model =
            { args = parseArgs(flags.args)
            , createdAt = flags.createdAt
            }

        cmds =
            []
    in
        model ! cmds


subscriptions : Model -> Sub Msg
subscriptions _ =
    Ports.start Start
