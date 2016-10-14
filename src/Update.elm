module Update exposing (update)

import Model exposing (Model, Msg(..))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Start () ->
            let
                _ =
                    Debug.log "command line arguments are" model.args
            in
                model ! []

        NoOp ->
            model ! []
