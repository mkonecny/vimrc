import XMonad
import XMonad.Config.Gnome
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import XMonad.Util.EZConfig
import XMonad.Layout.Tabbed
import XMonad.Layout.ResizableTile
import XMonad.Layout.Grid
import XMonad.Layout.Magnifier
import XMonad.Layout.TabBarDecoration
import XMonad.Layout.Circle
import XMonad.Layout.Spiral
import XMonad.Layout.Accordion

--main = xmonad $ gnomeConfig
--        { terminal = "urxvt"
--        , modMask = mod4Mask -- set the mod key to the windows key
--        }
--        `additionalKeysP` 
--                 [ ("M-p", spawn "dmenu_run")
--                 , ("M-<Backspace>", spawn "urxvt") -- N.B. this is an absurd thing to do
--                 ]
--



myLayoutHook = Full ||| tiled ||| Mirror tiled ||| tabbed shrinkText defaultTheme ||| Accordion ||| Circle
    where
        -- default tiling algorithm partitions the screen into two panes
        tiled   = Tall nmaster delta ratio
        -- The default number of windows in the master pane
        nmaster = 1
        -- Default proportion of screen occupied by master pane
        ratio   = 2/3
        -- Percent of screen to increment by when resizing panes
        delta   = 3/100
 

myManageHook = composeAll
    [ className =? "Gimp" --> doFloat
    ]

main = do
   xmproc <- spawnPipe "xmobar"
   xmonad  $ gnomeConfig
       { terminal = "urxvt"
       , modMask  = mod4Mask
       , borderWidth = 3
       , manageHook = manageDocks <+> myManageHook <+> manageHook gnomeConfig
       , layoutHook = avoidStruts $ layoutHook defaultConfig { layoutHook = myLayoutHook }
       , logHook = dynamicLogWithPP $ xmobarPP
                       { ppOutput = hPutStrLn xmproc
                       , ppTitle = xmobarColor "green" "" . shorten 50
                       }
       } `additionalKeysP`
            [ ("M-p", spawn "dmenu_run")
            , ("M-<Backspace>", spawn "urxvt") -- N.B. this is an absurd thing to do
            ]
