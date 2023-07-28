module App.Table where

import Prelude
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

type State
  = { }

data Action
  = Nothing

component :: forall q i o m. H.Component q i o m
component =
  H.mkComponent
    { initialState: \_ -> { }
    , render
    , eval: H.mkEval H.defaultEval { handleAction = handleAction }
    }

render :: forall cs m. State -> H.ComponentHTML Action cs m
render state =
    HH.div_
      [ HH.table_
        [ HH.tbody_ 
          [ 
            HH.tr_ 
            [ 
              HH.td_ [ HH.text "🍌" ],  
              HH.td_ [ HH.text "🍐" ],
              HH.td_ [ HH.text "🍌" ],
              HH.td_ [ HH.input [] ]
            ],
            HH.tr_
            [ 
              HH.td_ [ HH.text "🍎" ],  
              HH.td_ [ HH.text "🍎" ], 
              HH.td_ [ HH.text "🍎" ],
              HH.td_ [ HH.text "3"  ]
            ],
            HH.tr_
            [ 
              HH.td_ [ HH.text "🍐" ],  
              HH.td_ [ HH.text "🍐" ], 
              HH.td_ [ HH.text "🍎" ],
              HH.td_ [ HH.input [] ]
            ],
            HH.tr_
            [ 
              HH.td_ [ HH.input [] ],
              HH.td_ [ HH.input [] ],
              HH.td_ [ HH.text "5" ]
            ]
          ]
        ]
      ]
handleAction :: forall cs o m. Action -> H.HalogenM State Action cs o m Unit
handleAction = case _ of
  Nothing -> H.modify_ \st -> st