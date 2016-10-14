port module Ports
    exposing
        ( debugModel
        , start
        )

import Model exposing (Model)


port start : (() -> msg) -> Sub msg


port debugModel : Model -> Cmd msg
