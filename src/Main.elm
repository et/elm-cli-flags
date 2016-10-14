module Main exposing (main)

import Ports
import Model exposing (Flags, Model, Msg(Start))
import Update
import Worker


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
            { args = flags.args
            , createdAt = flags.createdAt
            }

        cmds =
            []
    in
        model ! cmds


subscriptions : Model -> Sub Msg
subscriptions _ =
    Ports.start Start
