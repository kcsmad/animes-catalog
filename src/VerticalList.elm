module VerticalList exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

type alias Anime = (String, String)

anime: String -> String -> Anime
anime name cover = (name, cover)

animeList: List Anime
animeList = [
  anime "Hunter x Hunter", "/images/hunter_x_.jpg",
  anime "Magi", "/images/magi.jpg",
]


renderAnimeListItem (name, cover) = [ li [] [text name], img [src cover] [] ]
renderAnimeList list = List.map renderAnimeListItem animeList

renderList = ul [] list
