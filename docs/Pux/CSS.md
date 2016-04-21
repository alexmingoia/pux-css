## Module Pux.CSS

#### `style`

``` purescript
style :: forall a. CSS -> Attribute a
```

#### `css`

``` purescript
css :: CSS -> Array (Tuple String String)
```


### Re-exported from CSS:

#### `Abs`

``` purescript
data Abs
```

#### `Angle`

``` purescript
newtype Angle a
  = Angle Value
```

##### Instances
``` purescript
Val (Angle a)
```

#### `AnimationDirection`

``` purescript
newtype AnimationDirection
  = AnimationDirection Value
```

##### Instances
``` purescript
Val AnimationDirection
```

#### `AnimationName`

``` purescript
newtype AnimationName
  = AnimationName Value
```

##### Instances
``` purescript
Val AnimationName
IsString AnimationName
```

#### `App`

``` purescript
data App
  = Self Refinement
  | Root Selector
  | Pop Int
  | Child Selector
  | Sub Selector
```

#### `BackgroundImage`

``` purescript
newtype BackgroundImage
  = BackgroundImage Value
```

##### Instances
``` purescript
Val BackgroundImage
```

#### `Color`

``` purescript
data Color
  = Rgba Int Int Int Int
  | Hsla Number Number Number Number
  | Other Value
```

##### Instances
``` purescript
IsString Color
Val Color
```

#### `ColorPoint`

``` purescript
data ColorPoint
  = ColorPoint Color (Size Rel)
```

#### `Deg`

``` purescript
data Deg
```

#### `Display`

``` purescript
newtype Display
  = Display Value
```

##### Instances
``` purescript
Val Display
```

#### `Feature`

``` purescript
data Feature
  = Feature String (Maybe Value)
```

#### `FillMode`

``` purescript
newtype FillMode
  = FillMode Value
```

##### Instances
``` purescript
Val FillMode
```

#### `FontFaceFormat`

``` purescript
data FontFaceFormat
  = WOFF
  | WOFF2
  | TrueType
  | OpenType
  | EmbeddedOpenType
  | SVG
```

#### `FontFaceSrc`

``` purescript
data FontFaceSrc
  = FontFaceSrcUrl String (Maybe FontFaceFormat)
  | FontFaceSrcLocal String
```

##### Instances
``` purescript
Val FontFaceSrc
```

#### `FontWeight`

``` purescript
newtype FontWeight
  = FontWeight Value
```

##### Instances
``` purescript
Val FontWeight
```

#### `GenericFontFamily`

``` purescript
newtype GenericFontFamily
  = GenericFontFamily Value
```

##### Instances
``` purescript
Val GenericFontFamily
```

#### `IterationCount`

``` purescript
newtype IterationCount
  = IterationCount Value
```

##### Instances
``` purescript
Val IterationCount
```

#### `Key`

``` purescript
newtype Key a
  = Key Prefixed
```

##### Instances
``` purescript
IsString (Key a)
```

#### `Keyframes`

``` purescript
data Keyframes
  = Keyframes String (NonEmpty Array (Tuple Number (Array Rule)))
```

#### `Literal`

``` purescript
newtype Literal
  = Literal String
```

##### Instances
``` purescript
Val Literal
```

#### `MediaQuery`

``` purescript
data MediaQuery
  = MediaQuery (Maybe NotOrOnly) MediaType (NonEmpty Array Feature)
```

#### `MediaType`

``` purescript
newtype MediaType
  = MediaType Value
```

#### `NotOrOnly`

``` purescript
data NotOrOnly
  = Not
  | Only
```

#### `Path`

``` purescript
data Path f
  = Star
  | Elem String
  | PathChild f f
  | Deep f f
  | Adjacent f f
  | Combined f f
```

#### `Position`

``` purescript
newtype Position
  = Position Value
```

##### Instances
``` purescript
Val Position
```

#### `Predicate`

``` purescript
data Predicate
  = Id String
  | Class String
  | Attr String
  | AttrVal String String
  | AttrBegins String String
  | AttrEnds String String
  | AttrContains String String
  | AttrSpace String String
  | AttrHyph String String
  | Pseudo String
  | PseudoFunc String (Array String)
```

##### Instances
``` purescript
Generic Predicate
Eq Predicate
Ord Predicate
```

#### `Prefixed`

``` purescript
data Prefixed
  = Prefixed (Array (Tuple String String))
  | Plain String
```

##### Instances
``` purescript
IsString Prefixed
Semigroup Prefixed
Monoid Prefixed
```

#### `Rad`

``` purescript
data Rad
```

#### `Refinement`

``` purescript
newtype Refinement
  = Refinement (Array Predicate)
```

##### Instances
``` purescript
IsString Refinement
```

#### `Rel`

``` purescript
data Rel
```

#### `Selector`

``` purescript
data Selector
  = Selector Refinement (Path Selector)
```

##### Instances
``` purescript
IsString Selector
```

#### `Size`

``` purescript
newtype Size a
  = Size Value
```

##### Instances
``` purescript
Val (Size a)
```

#### `Stroke`

``` purescript
newtype Stroke
  = Stroke Value
```

##### Instances
``` purescript
Val Stroke
```

#### `StyleM`

``` purescript
newtype StyleM a
  = S (Writer (Array Rule) a)
```

##### Instances
``` purescript
Functor StyleM
Apply StyleM
Bind StyleM
Applicative StyleM
Monad StyleM
```

#### `TextDecoration`

``` purescript
newtype TextDecoration
  = TextDecoration Value
```

##### Instances
``` purescript
Val TextDecoration
```

#### `Time`

``` purescript
newtype Time
  = Time Value
```

##### Instances
``` purescript
Val Time
```

#### `TimingFunction`

``` purescript
newtype TimingFunction
  = TimingFunction Value
```

##### Instances
``` purescript
Val TimingFunction
```

#### `Transformation`

``` purescript
newtype Transformation
  = Transformation Value
```

##### Instances
``` purescript
Val Transformation
```

#### `Value`

``` purescript
newtype Value
  = Value Prefixed
```

##### Instances
``` purescript
IsString Value
Semigroup Value
Monoid Value
Val Value
```

#### `IsString`

``` purescript
class IsString s where
  fromString :: String -> s
```

##### Instances
``` purescript
IsString String
```

#### `Val`

``` purescript
class Val a where
  value :: a -> Value
```

##### Instances
``` purescript
Val String
Val Literal
Val Value
(Val a, Val b) => Val (Tuple a b)
Val Number
(Val a) => Val (Array a)
(Val a) => Val (NonEmpty Array a)
```

#### `a`

``` purescript
a :: Selector
```

#### `absolute`

``` purescript
absolute :: Position
```

#### `aliceblue`

``` purescript
aliceblue :: Color
```

#### `alternate`

``` purescript
alternate :: AnimationDirection
```

#### `alternateReverse`

``` purescript
alternateReverse :: AnimationDirection
```

#### `animation`

``` purescript
animation :: AnimationName -> Time -> TimingFunction -> Time -> IterationCount -> AnimationDirection -> FillMode -> CSS
```

#### `antiquewhite`

``` purescript
antiquewhite :: Color
```

#### `aqua`

``` purescript
aqua :: Color
```

#### `aquamarine`

``` purescript
aquamarine :: Color
```

#### `azure`

``` purescript
azure :: Color
```

#### `backgroundColor`

``` purescript
backgroundColor :: Color -> CSS
```

#### `backgroundImage`

``` purescript
backgroundImage :: BackgroundImage -> CSS
```

#### `backwards`

``` purescript
backwards :: FillMode
```

#### `beige`

``` purescript
beige :: Color
```

#### `bisque`

``` purescript
bisque :: Color
```

#### `black`

``` purescript
black :: Color
```

#### `blanchedalmond`

``` purescript
blanchedalmond :: Color
```

#### `blink`

``` purescript
blink :: TextDecoration
```

#### `block`

``` purescript
block :: Display
```

#### `blue`

``` purescript
blue :: Color
```

#### `blueviolet`

``` purescript
blueviolet :: Color
```

#### `body`

``` purescript
body :: Selector
```

#### `bold`

``` purescript
bold :: FontWeight
```

#### `bolder`

``` purescript
bolder :: FontWeight
```

#### `border`

``` purescript
border :: Stroke -> Size Abs -> Color -> CSS
```

#### `borderColor`

``` purescript
borderColor :: Color -> CSS
```

#### `borderRadius`

``` purescript
borderRadius :: forall a. Size a -> Size a -> Size a -> Size a -> CSS
```

#### `bottom`

``` purescript
bottom :: forall a. Size a -> CSS
```

#### `brown`

``` purescript
brown :: Color
```

#### `burlywood`

``` purescript
burlywood :: Color
```

#### `cadetblue`

``` purescript
cadetblue :: Color
```

#### `cast`

``` purescript
cast :: forall a. Key a -> Key Unit
```

#### `chartreuse`

``` purescript
chartreuse :: Color
```

#### `child`

``` purescript
child :: Selector -> Selector -> Selector
```

#### `chocolate`

``` purescript
chocolate :: Color
```

#### `clamp`

``` purescript
clamp :: Int -> Int
```

#### `color`

``` purescript
color :: Color -> CSS
```

#### `coral`

``` purescript
coral :: Color
```

#### `cornflowerblue`

``` purescript
cornflowerblue :: Color
```

#### `cornsilk`

``` purescript
cornsilk :: Color
```

#### `crimson`

``` purescript
crimson :: Color
```

#### `cyan`

``` purescript
cyan :: Color
```

#### `darkblue`

``` purescript
darkblue :: Color
```

#### `darkcyan`

``` purescript
darkcyan :: Color
```

#### `darkgoldenrod`

``` purescript
darkgoldenrod :: Color
```

#### `darkgray`

``` purescript
darkgray :: Color
```

#### `darkgreen`

``` purescript
darkgreen :: Color
```

#### `darkgrey`

``` purescript
darkgrey :: Color
```

#### `darkkhaki`

``` purescript
darkkhaki :: Color
```

#### `darkmagenta`

``` purescript
darkmagenta :: Color
```

#### `darkolivegreen`

``` purescript
darkolivegreen :: Color
```

#### `darkorange`

``` purescript
darkorange :: Color
```

#### `darkorchid`

``` purescript
darkorchid :: Color
```

#### `darkred`

``` purescript
darkred :: Color
```

#### `darksalmon`

``` purescript
darksalmon :: Color
```

#### `darkseagreen`

``` purescript
darkseagreen :: Color
```

#### `darkslateblue`

``` purescript
darkslateblue :: Color
```

#### `darkslategray`

``` purescript
darkslategray :: Color
```

#### `darkslategrey`

``` purescript
darkslategrey :: Color
```

#### `darkturquoise`

``` purescript
darkturquoise :: Color
```

#### `darkviolet`

``` purescript
darkviolet :: Color
```

#### `dashed`

``` purescript
dashed :: Stroke
```

#### `deep`

``` purescript
deep :: Selector -> Selector -> Selector
```

#### `deeppink`

``` purescript
deeppink :: Color
```

#### `deepskyblue`

``` purescript
deepskyblue :: Color
```

#### `deg`

``` purescript
deg :: Number -> Angle Deg
```

#### `dimgray`

``` purescript
dimgray :: Color
```

#### `dimgrey`

``` purescript
dimgrey :: Color
```

#### `display`

``` purescript
display :: Display -> CSS
```

#### `displayInherit`

``` purescript
displayInherit :: Display
```

#### `displayNone`

``` purescript
displayNone :: Display
```

#### `dodgerblue`

``` purescript
dodgerblue :: Color
```

#### `dotted`

``` purescript
dotted :: Stroke
```

#### `double`

``` purescript
double :: Stroke
```

#### `easeOut`

``` purescript
easeOut :: TimingFunction
```

#### `element`

``` purescript
element :: String -> Selector
```

#### `em`

``` purescript
em :: Number -> Size Abs
```

#### `ex`

``` purescript
ex :: Number -> Size Abs
```

#### `firebrick`

``` purescript
firebrick :: Color
```

#### `fixed`

``` purescript
fixed :: Position
```

#### `flex`

``` purescript
flex :: Display
```

#### `floralwhite`

``` purescript
floralwhite :: Color
```

#### `fontFace`

``` purescript
fontFace :: CSS -> CSS
```

#### `fontFaceFamily`

``` purescript
fontFaceFamily :: String -> CSS
```

#### `fontFaceSrc`

``` purescript
fontFaceSrc :: NonEmpty Array FontFaceSrc -> CSS
```

#### `fontFamily`

``` purescript
fontFamily :: Array String -> NonEmpty Array GenericFontFamily -> CSS
```

#### `fontSize`

``` purescript
fontSize :: forall a. Size a -> CSS
```

#### `fontWeight`

``` purescript
fontWeight :: FontWeight -> CSS
```

#### `forestgreen`

``` purescript
forestgreen :: Color
```

#### `formatName`

``` purescript
formatName :: FontFaceFormat -> String
```

#### `forwards`

``` purescript
forwards :: FillMode
```

#### `fuchsia`

``` purescript
fuchsia :: Color
```

#### `gainsboro`

``` purescript
gainsboro :: Color
```

#### `ghostwhite`

``` purescript
ghostwhite :: Color
```

#### `gold`

``` purescript
gold :: Color
```

#### `goldenrod`

``` purescript
goldenrod :: Color
```

#### `gray`

``` purescript
gray :: Color
```

#### `green`

``` purescript
green :: Color
```

#### `greenyellow`

``` purescript
greenyellow :: Color
```

#### `grey`

``` purescript
grey :: Color
```

#### `grid`

``` purescript
grid :: Display
```

#### `groove`

``` purescript
groove :: Stroke
```

#### `h1`

``` purescript
h1 :: Selector
```

#### `h2`

``` purescript
h2 :: Selector
```

#### `h3`

``` purescript
h3 :: Selector
```

#### `h4`

``` purescript
h4 :: Selector
```

#### `h5`

``` purescript
h5 :: Selector
```

#### `h6`

``` purescript
h6 :: Selector
```

#### `height`

``` purescript
height :: forall a. Size a -> CSS
```

#### `honeydew`

``` purescript
honeydew :: Color
```

#### `hotpink`

``` purescript
hotpink :: Color
```

#### `hover`

``` purescript
hover :: Refinement
```

#### `html`

``` purescript
html :: Selector
```

#### `importUrl`

``` purescript
importUrl :: String -> CSS
```

#### `indianred`

``` purescript
indianred :: Color
```

#### `indigo`

``` purescript
indigo :: Color
```

#### `infinite`

``` purescript
infinite :: IterationCount
```

#### `inline`

``` purescript
inline :: Display
```

#### `inlineBlock`

``` purescript
inlineBlock :: Display
```

#### `inlineFlex`

``` purescript
inlineFlex :: Display
```

#### `inlineGrid`

``` purescript
inlineGrid :: Display
```

#### `inlineTable`

``` purescript
inlineTable :: Display
```

#### `inset`

``` purescript
inset :: Stroke
```

#### `iterationCount`

``` purescript
iterationCount :: Number -> IterationCount
```

#### `ivory`

``` purescript
ivory :: Color
```

#### `key`

``` purescript
key :: forall a. (Val a) => Key a -> a -> CSS
```

#### `keyframes`

``` purescript
keyframes :: String -> NonEmpty Array (Tuple Number CSS) -> CSS
```

#### `keyframesFromTo`

``` purescript
keyframesFromTo :: String -> CSS -> CSS -> CSS
```

#### `khaki`

``` purescript
khaki :: Color
```

#### `lavender`

``` purescript
lavender :: Color
```

#### `lavenderblush`

``` purescript
lavenderblush :: Color
```

#### `lawngreen`

``` purescript
lawngreen :: Color
```

#### `left`

``` purescript
left :: forall a. Size a -> CSS
```

#### `lemonchiffon`

``` purescript
lemonchiffon :: Color
```

#### `lightblue`

``` purescript
lightblue :: Color
```

#### `lightcoral`

``` purescript
lightcoral :: Color
```

#### `lightcyan`

``` purescript
lightcyan :: Color
```

#### `lighter`

``` purescript
lighter :: FontWeight
```

#### `lightgoldenrodyellow`

``` purescript
lightgoldenrodyellow :: Color
```

#### `lightgray`

``` purescript
lightgray :: Color
```

#### `lightgreen`

``` purescript
lightgreen :: Color
```

#### `lightgrey`

``` purescript
lightgrey :: Color
```

#### `lightpink`

``` purescript
lightpink :: Color
```

#### `lightsalmon`

``` purescript
lightsalmon :: Color
```

#### `lightseagreen`

``` purescript
lightseagreen :: Color
```

#### `lightskyblue`

``` purescript
lightskyblue :: Color
```

#### `lightslategray`

``` purescript
lightslategray :: Color
```

#### `lightslategrey`

``` purescript
lightslategrey :: Color
```

#### `lightsteelblue`

``` purescript
lightsteelblue :: Color
```

#### `lightyellow`

``` purescript
lightyellow :: Color
```

#### `lime`

``` purescript
lime :: Color
```

#### `limegreen`

``` purescript
limegreen :: Color
```

#### `lineThrough`

``` purescript
lineThrough :: TextDecoration
```

#### `linear`

``` purescript
linear :: TimingFunction
```

#### `linearGradient`

``` purescript
linearGradient :: forall a. Angle a -> ColorPoint -> Array ColorPoint -> ColorPoint -> BackgroundImage
```

#### `linen`

``` purescript
linen :: Color
```

#### `listItem`

``` purescript
listItem :: Display
```

#### `magenta`

``` purescript
magenta :: Color
```

#### `margin`

``` purescript
margin :: forall a. Size a -> Size a -> Size a -> Size a -> CSS
```

#### `marginBottom`

``` purescript
marginBottom :: forall a. Size a -> CSS
```

#### `marginLeft`

``` purescript
marginLeft :: forall a. Size a -> CSS
```

#### `marginRight`

``` purescript
marginRight :: forall a. Size a -> CSS
```

#### `marginTop`

``` purescript
marginTop :: forall a. Size a -> CSS
```

#### `maroon`

``` purescript
maroon :: Color
```

#### `maxHeight`

``` purescript
maxHeight :: forall a. Size a -> CSS
```

#### `maxWidth`

``` purescript
maxWidth :: forall a. Size a -> CSS
```

#### `mediumaquamarine`

``` purescript
mediumaquamarine :: Color
```

#### `mediumblue`

``` purescript
mediumblue :: Color
```

#### `mediumorchid`

``` purescript
mediumorchid :: Color
```

#### `mediumpurple`

``` purescript
mediumpurple :: Color
```

#### `mediumseagreen`

``` purescript
mediumseagreen :: Color
```

#### `mediumslateblue`

``` purescript
mediumslateblue :: Color
```

#### `mediumspringgreen`

``` purescript
mediumspringgreen :: Color
```

#### `mediumturquoise`

``` purescript
mediumturquoise :: Color
```

#### `mediumvioletred`

``` purescript
mediumvioletred :: Color
```

#### `midnightblue`

``` purescript
midnightblue :: Color
```

#### `minHeight`

``` purescript
minHeight :: forall a. Size a -> CSS
```

#### `minWidth`

``` purescript
minWidth :: forall a. Size a -> CSS
```

#### `mintcream`

``` purescript
mintcream :: Color
```

#### `mistyrose`

``` purescript
mistyrose :: Color
```

#### `moccasin`

``` purescript
moccasin :: Color
```

#### `ms`

``` purescript
ms :: Number -> Time
```

#### `navajowhite`

``` purescript
navajowhite :: Color
```

#### `navy`

``` purescript
navy :: Color
```

#### `nil`

``` purescript
nil :: forall a. Size a
```

#### `noCommas`

``` purescript
noCommas :: forall a. (Val a) => Array a -> Value
```

#### `noneTextDecoration`

``` purescript
noneTextDecoration :: TextDecoration
```

#### `normalAnimationDirection`

``` purescript
normalAnimationDirection :: AnimationDirection
```

#### `oldlace`

``` purescript
oldlace :: Color
```

#### `olive`

``` purescript
olive :: Color
```

#### `olivedrab`

``` purescript
olivedrab :: Color
```

#### `orange`

``` purescript
orange :: Color
```

#### `orangered`

``` purescript
orangered :: Color
```

#### `orchid`

``` purescript
orchid :: Color
```

#### `outset`

``` purescript
outset :: Stroke
```

#### `overline`

``` purescript
overline :: TextDecoration
```

#### `padding`

``` purescript
padding :: forall a. Size a -> Size a -> Size a -> Size a -> CSS
```

#### `paddingBottom`

``` purescript
paddingBottom :: forall a. Size a -> CSS
```

#### `paddingLeft`

``` purescript
paddingLeft :: forall a. Size a -> CSS
```

#### `paddingRight`

``` purescript
paddingRight :: forall a. Size a -> CSS
```

#### `paddingTop`

``` purescript
paddingTop :: forall a. Size a -> CSS
```

#### `palegoldenrod`

``` purescript
palegoldenrod :: Color
```

#### `palegreen`

``` purescript
palegreen :: Color
```

#### `paleturquoise`

``` purescript
paleturquoise :: Color
```

#### `palevioletred`

``` purescript
palevioletred :: Color
```

#### `papayawhip`

``` purescript
papayawhip :: Color
```

#### `pct`

``` purescript
pct :: Number -> Size Rel
```

#### `peachpuff`

``` purescript
peachpuff :: Color
```

#### `peru`

``` purescript
peru :: Color
```

#### `pink`

``` purescript
pink :: Color
```

#### `plain`

``` purescript
plain :: Prefixed -> String
```

#### `plum`

``` purescript
plum :: Color
```

#### `position`

``` purescript
position :: Position -> CSS
```

#### `powderblue`

``` purescript
powderblue :: Color
```

#### `pt`

``` purescript
pt :: Number -> Size Abs
```

#### `purple`

``` purescript
purple :: Color
```

#### `px`

``` purescript
px :: Number -> Size Abs
```

#### `query`

``` purescript
query :: MediaType -> NonEmpty Array Feature -> CSS -> CSS
```

#### `quote`

``` purescript
quote :: String -> String
```

#### `rad`

``` purescript
rad :: Number -> Angle Rad
```

#### `red`

``` purescript
red :: Color
```

#### `relative`

``` purescript
relative :: Position
```

#### `rem`

``` purescript
rem :: Number -> Size Rel
```

#### `reverse`

``` purescript
reverse :: AnimationDirection
```

#### `rgb`

``` purescript
rgb :: Int -> Int -> Int -> Color
```

#### `rgba`

``` purescript
rgba :: Int -> Int -> Int -> Int -> Color
```

#### `ridge`

``` purescript
ridge :: Stroke
```

#### `right`

``` purescript
right :: forall a. Size a -> CSS
```

#### `rosybrown`

``` purescript
rosybrown :: Color
```

#### `rotate`

``` purescript
rotate :: forall a. Angle a -> Transformation
```

#### `royalblue`

``` purescript
royalblue :: Color
```

#### `rule`

``` purescript
rule :: Rule -> CSS
```

#### `runIn`

``` purescript
runIn :: Display
```

#### `saddlebrown`

``` purescript
saddlebrown :: Color
```

#### `salmon`

``` purescript
salmon :: Color
```

#### `sandybrown`

``` purescript
sandybrown :: Color
```

#### `sansSerif`

``` purescript
sansSerif :: GenericFontFamily
```

#### `seagreen`

``` purescript
seagreen :: Color
```

#### `seashell`

``` purescript
seashell :: Color
```

#### `sec`

``` purescript
sec :: Number -> Time
```

#### `sienna`

``` purescript
sienna :: Color
```

#### `silver`

``` purescript
silver :: Color
```

#### `skyblue`

``` purescript
skyblue :: Color
```

#### `slateblue`

``` purescript
slateblue :: Color
```

#### `slategray`

``` purescript
slategray :: Color
```

#### `slategrey`

``` purescript
slategrey :: Color
```

#### `snow`

``` purescript
snow :: Color
```

#### `solid`

``` purescript
solid :: Stroke
```

#### `springgreen`

``` purescript
springgreen :: Color
```

#### `star`

``` purescript
star :: Selector
```

#### `static`

``` purescript
static :: Position
```

#### `steelblue`

``` purescript
steelblue :: Color
```

#### `sym`

``` purescript
sym :: forall a b. (a -> a -> a -> a -> b) -> a -> b
```

#### `table`

``` purescript
table :: Display
```

#### `tableCaption`

``` purescript
tableCaption :: Display
```

#### `tableCell`

``` purescript
tableCell :: Display
```

#### `tableColumn`

``` purescript
tableColumn :: Display
```

#### `tableColumnGroup`

``` purescript
tableColumnGroup :: Display
```

#### `tableFooterGroup`

``` purescript
tableFooterGroup :: Display
```

#### `tableHeaderGroup`

``` purescript
tableHeaderGroup :: Display
```

#### `tableRow`

``` purescript
tableRow :: Display
```

#### `tableRowGroup`

``` purescript
tableRowGroup :: Display
```

#### `tan`

``` purescript
tan :: Color
```

#### `teal`

``` purescript
teal :: Color
```

#### `textDecoration`

``` purescript
textDecoration :: TextDecoration -> CSS
```

#### `thistle`

``` purescript
thistle :: Color
```

#### `tomato`

``` purescript
tomato :: Color
```

#### `top`

``` purescript
top :: forall a. Size a -> CSS
```

#### `transform`

``` purescript
transform :: Transformation -> CSS
```

#### `transforms`

``` purescript
transforms :: Array Transformation -> CSS
```

#### `translate`

``` purescript
translate :: Size Abs -> Size Abs -> Transformation
```

#### `turquoise`

``` purescript
turquoise :: Color
```

#### `underline`

``` purescript
underline :: TextDecoration
```

#### `violet`

``` purescript
violet :: Color
```

#### `wavy`

``` purescript
wavy :: Stroke
```

#### `weight`

``` purescript
weight :: Number -> FontWeight
```

#### `wheat`

``` purescript
wheat :: Color
```

#### `white`

``` purescript
white :: Color
```

#### `whitesmoke`

``` purescript
whitesmoke :: Color
```

#### `width`

``` purescript
width :: forall a. Size a -> CSS
```

#### `with`

``` purescript
with :: Selector -> Refinement -> Selector
```

#### `yellow`

``` purescript
yellow :: Color
```

#### `yellowgreen`

``` purescript
yellowgreen :: Color
```

#### `(##)`

``` purescript
(##) :: Selector -> Refinement -> Selector
```

_left-associative / precedence -1_

#### `(**)`

``` purescript
(**) :: Selector -> Selector -> Selector
```

_left-associative / precedence -1_

#### `(?)`

``` purescript
(?) :: Selector -> CSS -> CSS
```

_right-associative / precedence 5_

#### `(|>)`

``` purescript
(|>) :: Selector -> Selector -> Selector
```

_left-associative / precedence -1_

### Re-exported from CSS.Overflow:

#### `Overflow`

``` purescript
newtype Overflow
  = Overflow Value
```

##### Instances
``` purescript
Val Overflow
```

#### `hidden`

``` purescript
hidden :: Overflow
```

#### `overflow`

``` purescript
overflow :: Overflow -> CSS
```

#### `overflowAuto`

``` purescript
overflowAuto :: Overflow
```

#### `overflowInherit`

``` purescript
overflowInherit :: Overflow
```

#### `overflowX`

``` purescript
overflowX :: Overflow -> CSS
```

#### `overflowY`

``` purescript
overflowY :: Overflow -> CSS
```

#### `scroll`

``` purescript
scroll :: Overflow
```

#### `visible`

``` purescript
visible :: Overflow
```

### Re-exported from CSS.Stylesheet:

#### `CSS`

``` purescript
type CSS = StyleM Unit
```

#### `Rule`

``` purescript
data Rule
  = Property (Key Unit) Value
  | Nested App (Array Rule)
  | Query MediaQuery (Array Rule)
  | Face (Array Rule)
  | Keyframe Keyframes
  | Import String
```

#### `runS`

``` purescript
runS :: forall a. StyleM a -> Array Rule
```

### Re-exported from CSS.TextAlign:

#### `TextAlign`

``` purescript
newtype TextAlign
  = TextAlign Value
```

##### Instances
``` purescript
Val TextAlign
```

#### `center`

``` purescript
center :: TextAlign
```

#### `endTextAlign`

``` purescript
endTextAlign :: TextAlign
```

#### `inheritTextAlign`

``` purescript
inheritTextAlign :: TextAlign
```

#### `justify`

``` purescript
justify :: TextAlign
```

#### `leftTextAlign`

``` purescript
leftTextAlign :: TextAlign
```

#### `rightTextAlign`

``` purescript
rightTextAlign :: TextAlign
```

#### `startTextAlign`

``` purescript
startTextAlign :: TextAlign
```

#### `textAlign`

``` purescript
textAlign :: TextAlign -> CSS
```

