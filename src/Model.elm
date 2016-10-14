module Model exposing (Flags, Model, Msg(..))

import Time exposing (Time)


type alias Model =
    { args : List String
    , createdAt : Time
    }


type alias Flags =
    { args : List String
    , createdAt : Float
    , configFilename : String
    }


type Msg
    = NoOp
    | Start ()


type alias Filename =
    String


type alias FileContent =
    String
