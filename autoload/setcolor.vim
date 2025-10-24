" Change the color scheme from a list of color scheme names.
" Version 2010-09-12 from http://vim.wikia.com/wiki/VimTip341
" Press key:
"   F8                next scheme
"   Shift-F8          previous scheme
"   Alt-F8            random scheme
" Set the list of color schemes used by the above (default is 'all'):
"   :SetColors all              (all $VIMRUNTIME/colors/*.vim)
"   :SetColors my               (names built into script)
"   :SetColors blue slate ron   (these schemes)
"   :SetColors                  (display current scheme names)

let s:mycolors = ['0x7A69_dark' , 'cobalt2' , 'gryffin' , 'lilac' , 'neverland2' , 'tayra' , '1989' , 'base16-atelierforest' , 'cobaltish' , 'duotone-darksea' , 'guardian' , 'lilydjwg_dark' , 'neverland2-darker' , 'revolutions' , 'tchaba' , '256-grayvim' , 'base16-atelierheath' , 'coda' , 'duotone-darkspace' , 'guepardo' , 'lilydjwg_green' , 'neverness' , 'robinhood' , 'tchaba2' , '256-jungle' , 'base16-atelierlakeside' , 'codeblocks_dark' , 'dusk' , 'h80' , 'lilypink' , 'nevfn' , 'ron' , 'tcsoft' , '256_noir' , 'base16-atelierplateau' , 'codeburn' , 'dw_blue' , 'habiLight' , 'lingodirector' , 'newspaper' , 'rootwater' , 'telstar' , '3dglasses' , 'base16-ateliersavanna' , 'codeschool' , 'dw_cyan' , 'harlequin' , 'liquidcarbon' , 'newsprint' , 'sadek1' , 'termschool' , 'Benokai' , 'base16-atelierseaside' , 'coffee' , 'dw_green' , 'heliotrope' , 'literal_tango' , 'nicotine' , 'sand' , 'tesla' , 'Black' , 'base16-ateliersulphurpool' , 'coldgreen' , 'dw_orange' , 'hemisu' , 'lizard' , 'night' , 'sandydune' , 'tetragrammaton' , 'BlackSea' , 'base16-railscasts' , 'colorer' , 'dw_purple' , 'herald' , 'lizard256' , 'nightVision' , 'satori' , 'textmate16' , 'Blue2' , 'basic' , 'colorful' , 'dw_red' , 'heroku' , 'lodestone' , 'night_vision' , 'saturn' , 'thegoodluck' , 'C64' , 'bayQua' , 'colorful256' , 'dw_yellow' , 'heroku-terminal' , 'loogica' , 'nightflight' , 'scheakur' , 'thestars' , 'CandyPaper' , 'baycomb' , 'colorsbox-faff' , 'earendel' , 'herokudoc' , 'louver' , 'nightflight2' , 'scite' , 'thor' , 'Chasing_Logic' , 'bclear' , 'colorsbox-greenish' , 'earth' , 'herokudoc-gvim' , 'lucid' , 'nightshade' , 'scooby' , 'thornbird' , 'ChocolateLiquor' , 'beachcomber' , 'colorsbox-material' , 'earthburn' , 'hhazure' , 'lucius' , 'nightshade_print' , 'sean' , 'tibet' , 'ChocolatePapaya' , 'beauty256' , 'colorsbox-stblue' , 'eclipse' , 'hhdblue' , 'luinnar' , 'nightshimmer' , 'seashell' , 'tidy' , 'CodeFactoryv3' , 'beekai' , 'colorsbox-stbright' , 'eclm_wombat' , 'hhdcyan' , 'lumberjack' , 'nightsky' , 'seattle' , 'tir_black' , 'Dark' , 'behelit' , 'colorsbox-steighties' , 'ecostation' , 'hhdgray' , 'luna' , 'nightwish' , 'selenitic' , 'tolerable' , 'Dark2' , 'benlight' , 'colorsbox-stnight' , 'editplus' , 'hhdgreen' , 'luna-term' , 'no_quarter' , 'seoul' , 'tomatosoup' , 'DarkDefault' , 'bensday' , 'colorzone' , 'edo_sea' , 'hhdmagenta' , 'lxvc' , 'northland' , 'seoul256' , 'tony_light' , 'DevC++' , 'billw' , 'contrasty' , 'ego' , 'hhdred' , 'mac_classic' , 'northsky' , 'seoul256-light' , 'toothpik' , 'Dev_Delight' , 'biogoo' , 'cool' , 'ekinivim' , 'hhdyellow' , 'made_of_code' , 'norwaytoday' , 'seti' , 'torte' , 'Dim' , 'birds-of-paradise' , 'corn' , 'ekvoli' , 'hhorange' , 'madeofcode' , 'nour' , 'settlemyer' , 'transparent' , 'Dim2' , 'black_angus' , 'corporation' , 'elda' , 'hhpink' , 'magicwb' , 'nuvola' , 'sexy-railscasts' , 'triplejelly' , 'DimBlue' , 'blackbeauty' , 'crayon' , 'elflord' , 'hhspring' , 'mango' , 'obsidian' , 'sf' , 'trivial256' , 'DimGreen' , 'blackboard' , 'crt' , 'elise' , 'hhteal' , 'manuscript' , 'obsidian2' , 'shades-of-teal' , 'trogdor' , 'DimGreens' , 'blackdust' , 'cthulhian' , 'elisex' , 'hhviolet' , 'manxome' , 'oceanblack' , 'shadesofamber' , 'tropikos' , 'DimGrey' , 'blacklight' , 'custom' , 'elrodeo' , 'hilal' , 'marklar' , 'oceanblack256' , 'shine' , 'turbo' , 'DimRed' , 'blaquemagick' , 'd8g_01' , 'elrond' , 'holokai' , 'maroloccio' , 'oceandeep' , 'shobogenzo' , 'tutticolori' , 'DimSlate' , 'blazer' , 'd8g_02' , 'emacs' , 'hornet' , 'maroloccio2' , 'oceanlight' , 'sienna' , 'twilight' , 'Green' , 'blink' , 'd8g_03' , 'enigma' , 'hotpot' , 'maroloccio3' , 'olive' , 'sierra' , 'twilight256' , 'Light' , 'blue' , 'd8g_04' , 'enzyme' , 'hybrid' , 'mars' , 'onedark' , 'sift' , 'twitchy' , 'LightDefault' , 'bluechia' , 'dante' , 'erez' , 'hybrid-light' , 'martin_krischik' , 'orange' , 'silent' , 'two2tango' , 'LightDefaultGrey' , 'bluedrake' , 'dark-ruby' , 'eva' , 'hybrid_material' , 'material' , 'osx_like' , 'simple256' , 'ubaryd' , 'LightTan' , 'bluegreen' , 'darkBlue' , 'eva01' , 'hybrid_reverse' , 'material-theme' , 'otaku' , 'simple_b' , 'ubloh' , 'LightYellow' , 'blueprint' , 'darkZ' , 'evening' , 'iangenzo' , 'materialbox' , 'oxeded' , 'simpleandfriendly' , 'umber-green' , 'Monokai' , 'blueshift' , 'darkblack' , 'evening1' , 'ibmedit' , 'materialtheme' , 'pablo' , 'simplewhite' , 'understated' , 'MountainDew' , 'bluez' , 'darkblue' , 'evolution' , 'icansee' , 'matrix' , 'pacific' , 'simplon' , 'underwater' , 'OceanicNext' , 'blugrine' , 'darkblue2' , 'far' , 'iceberg' , 'maui' , 'paintbox' , 'skittles_berry' , 'underwater-mod' , 'PapayaWhip' , 'bmichaelsen' , 'darkbone' , 'felipec' , 'impact' , 'mayansmoke' , 'parsec' , 'skittles_dark' , 'up' , 'PaperColor' , 'bocau' , 'darkburn' , 'feral' , 'impactG' , 'mdark' , 'peachpuff' , 'sky' , 'valloric' , 'Red' , 'bog' , 'darkdevel' , 'flatcolor' , 'impactjs' , 'mellow' , 'peaksea' , 'slate' , 'vanzan_color' , 'Revolution' , 'borland' , 'darkdot' , 'flatland' , 'industrial' , 'meta5' , 'pencil' , 'slate2' , 'vc' , 'Slate' , 'breeze' , 'darkeclipse' , 'flatlandia' , 'industry' , 'metacosm' , 'penultimate' , 'smp' , 'vcbc' , 'SlateDark' , 'brogrammer' , 'darker-robin' , 'flattened_dark' , 'ingretu' , 'midnight' , 'peppers' , 'smpl' , 'vexorian' , 'Spink' , 'brookstream' , 'darkerdesert' , 'flattened_light' , 'inkpot' , 'miko' , 'perfect' , 'smyck' , 'vibrantink' , 'SweetCandy' , 'brown' , 'darkocean' , 'flattown' , 'inori' , 'minimalist' , 'pf_earth' , 'soda' , 'vilight' , 'Tomorrow' , 'bubblegum' , 'darkrobot' , 'flattr' , 'ir_black' , 'mint' , 'phd' , 'softblue' , 'vimbrant' , 'Tomorrow-Night' , 'bubblegum-256-dark' , 'darkslategray' , 'flatui' , 'ironman' , 'mizore' , 'phoenix' , 'softbluev2' , 'visualstudio' , 'Tomorrow-Night-Blue' , 'bubblegum-256-light' , 'darkspectrum' , 'fnaqevan' , 'itg_flat' , 'mod8' , 'phphaxor' , 'softlight' , 'vividchalk' , 'Tomorrow-Night-Bright' , 'buddy' , 'darktango' , 'fog' , 'jaime' , 'mod_tcsoft' , 'phpx' , 'sol' , 'vj' , 'Tomorrow-Night-Eighties' , 'burnttoast256' , 'darkzen' , 'fokus' , 'jammy' , 'mojave' , 'pink' , 'sol-term' , 'void' , 'VIvid' , 'busierbee' , 'darth' , 'forneus' , 'janah' , 'molokai' , 'playroom' , 'solarized' , 'vydark' , 'White2' , 'busybee' , 'dawn' , 'freya' , 'jelleybeans' , 'molokai_dark' , 'pleasant' , 'sole' , 'vylight' , 'abbott' , 'buttercream' , 'deepsea' , 'frood' , 'jellybeans' , 'monoacc' , 'potts' , 'sonofobsidian' , 'wargrey' , 'abra' , 'bvemu' , 'default' , 'frozen' , 'jellyx' , 'monochrome' , 'predawn' , 'sonoma' , 'warm_grey' , 'adam' , 'bw' , 'delek' , 'fruidle' , 'jhdark' , 'monokai-chris' , 'preto' , 'sorcerer' , 'wasabi256' , 'adaryn' , 'c' , 'delphi' , 'fruit' , 'jhlight' , 'monokain' , 'pride' , 'soruby' , 'watermark' , 'adobe' , 'c16gui' , 'denim' , 'fruity' , 'jiks' , 'montz' , 'primary' , 'soso' , 'wellsokai' , 'adrian' , 'cabin' , 'derefined' , 'fu' , 'kalahari' , 'moonshine' , 'print_bw' , 'sourcerer' , 'white' , 'advantage' , 'cake' , 'desert' , 'fx' , 'kalisi' , 'moonshine_lowcontrast' , 'prmths' , 'southernlights' , 'whitebox' , 'af' , 'cake16' , 'desert256' , 'gardener' , 'kalt' , 'mophiaDark' , 'professional' , 'southwest-fog' , 'whitedust' , 'aiseered' , 'calmar256-dark' , 'desert256v2' , 'gemcolors' , 'kaltex' , 'mophiaSmoke' , 'proton' , 'spacegray' , 'widower' , 'alduin' , 'calmar256-light' , 'desertEx' , 'genericdc' , 'kate' , 'mopkai' , 'ps_color' , 'spectro' , 'win9xblueback' , 'anderson' , 'camo' , 'desertedocean' , 'genericdc-light' , 'kellys' , 'moria' , 'pspad' , 'spiderhawk' , 'winter' , 'anotherdark' , 'campfire' , 'desertedoceanburnt' , 'gentooish' , 'khaki' , 'morning' , 'pt_black' , 'spring' , 'wintersday' , 'ansi_blows' , 'candy' , 'desertink' , 'getafe' , 'kib_darktango' , 'moss' , 'putty' , 'sprinkles' , 'woju' , 'antares' , 'candycode' , 'detailed' , 'getfresh' , 'kib_plastic' , 'motus' , 'pw' , 'stackoverflow' , 'wolfpack' , 'apprentice' , 'candyman' , 'devbox-dark-256' , 'github' , 'kiss' , 'mrkn256' , 'pyte' , 'stingray' , 'wombat' , 'aqua' , 'caramel' , 'deveiate' , 'gobo' , 'kkruby' , 'mrpink' , 'python' , 'stonewashed-256' , 'wombat256' , 'argonaut' , 'carrot' , 'developer' , 'golded' , 'koehler' , 'mud' , 'quagmire' , 'stonewashed-gui' , 'wombat256i' , 'ashen' , 'carvedwood' , 'disciple' , 'golden' , 'kolor' , 'muon' , 'radicalgoodspeed' , 'strange' , 'wombat256mod' , 'asmanian2' , 'carvedwoodcool' , 'distinguished' , 'goodwolf' , 'kruby' , 'murphy' , 'railscasts' , 'strawimodo' , 'wood' , 'asmanian_blood' , 'cascadia' , 'django' , 'google' , 'kyle' , 'mushroom' , 'rainbow_autumn' , 'summerfruit' , 'wuye' , 'asmdev' , 'cgpro' , 'donbass' , 'gor' , 'laederon' , 'mustang' , 'rainbow_fine_blue' , 'summerfruit256' , 'xemacs' , 'asmdev2' , 'chance-of-storm' , 'doorhinge' , 'gotham' , 'landscape' , 'native' , 'rainbow_night' , 'sunburst' , 'xian' , 'astronaut' , 'charged-256' , 'doriath' , 'gotham256' , 'lanzarotta' , 'nature' , 'rainbow_sea' , 'surveyor' , 'xmaslights' , 'asu1dark' , 'charon' , 'dracula' , 'gothic' , 'lapis256' , 'navajo' , 'rakr-light' , 'swamplight' , 'xoria256' , 'atom' , 'chela_light' , 'dual' , 'grape' , 'last256' , 'navajo-night' , 'random' , 'sweater' , 'xterm16' , 'aurora' , 'chlordane' , 'dull' , 'gravity' , 'late_evening' , 'nazca' , 'rastafari' , 'symfony' , 'yeller' , 'automation' , 'chocolate' , 'duotone-dark' , 'grayorange' , 'lazarus' , 'nedit' , 'rcg_gui' , 'synic' , 'zazen' , 'autumn' , 'chrysoprase' , 'duotone-darkcave' , 'graywh' , 'legiblelight' , 'nedit2' , 'rcg_term' , 'tabula' , 'zellner' , 'autumnleaf' , 'clarity' , 'duotone-darkdesert' , 'grb256' , 'leglight2' , 'nefertiti' , 'rdark' , 'tango' , 'zen' , 'babymate256' , 'cleanphp' , 'duotone-darkearth' , 'greens' , 'leo' , 'neon' , 'rdark-terminal' , 'tango-desert' , 'zenburn' , 'badwolf' , 'cleanroom' , 'duotone-darkforest' , 'greenvision' , 'less' , 'neonwave' , 'redblack' , 'tango-morning' , 'zenesque' , 'bandit' , 'clearance' , 'duotone-darkheath' , 'grey2' , 'lettuce' , 'nerv-ous' , 'redstring' , 'tango2' , 'zephyr' , 'base' , 'cloudy' , 'duotone-darklake' , 'greyblue' , 'leya' , 'neutron' , 'refactor' , 'tangoX' , 'zmrok' , 'base16-ateliercave' , 'clue' , 'duotone-darkmeadow' , 'grishin' , 'lightcolors' , 'neverland' , 'relaxedgreen' , 'tangoshady' , 'znake' , 'base16-atelierdune' , 'cobalt' , 'duotone-darkpark' , 'gruvbox' , 'lightning' , 'neverland-darker' , 'reliable' , 'taqua']

" Set list of color scheme names that we will use, except
" argument 'now' actually changes the current color scheme.
function! s:SetColors(args)
  if len(a:args) == 0
    echo 'Current color scheme names:'
    let i = 0
    while i < len(s:mycolors)
      echo '  '.join(map(s:mycolors[i : i+4], 'printf("%-14s", v:val)'))
      let i += 5
    endwhile
  elseif a:args == 'all'
    let paths = split(globpath(&runtimepath, 'colors/*.vim'), "\n")
    let s:mycolors = map(paths, 'fnamemodify(v:val, ":t:r")')
    echo 'List of colors set from all installed color schemes'
  elseif a:args == 'my'
    let c1 = 'default elflord peachpuff desert256 breeze morning'
    let c2 = 'darkblue gothic aqua earth black_angus relaxedgreen'
    let c3 = 'darkblack freya motus impact less chocolateliquor'
    let s:mycolors = split(c1.' '.c2.' '.c3)
    echo 'List of colors set from built-in names'
  elseif a:args == 'now'
    call s:HourColor()
  else
    let s:mycolors = split(a:args)
    echo 'List of colors set from argument (space-separated names)'
  endif
endfunction

command! -nargs=* SetColors call s:SetColors('<args>')

" Set next/previous/random (how = 1/-1/0) color from our list of colors.
" The 'random' index is actually set from the current time in seconds.
" Global (no 's:') so can easily call from command line.
function! NextColor(how)
  call s:NextColor(a:how, 1)
endfunction

" Helper function for NextColor(), allows echoing of the color name to be
" disabled.

" Set color scheme according to current time of day.
function! s:HourColor()
  let hr = str2nr(strftime('%H'))
  if hr <= 3
    let i = 0
  elseif hr <= 7
    let i = 1
  elseif hr <= 14
    let i = 2
  elseif hr <= 18
    let i = 3
  else
    let i = 4
  endif
  let nowcolors = 'elflord morning desert evening pablo'
  execute 'colorscheme '.split(nowcolors)[i]
  redraw
  echo g:colors_name
endfunction

function! setcolor#NextColor(how, echo_color)
  if len(s:mycolors) == 0
    call s:SetColors('all')
  endif
  if exists('g:colors_name')
    let current = index(s:mycolors, g:colors_name)
  else
    let current = -1
  endif
  let missing = []
  let how = a:how
  for i in range(len(s:mycolors))
    if how == 0
      let current = localtime() % len(s:mycolors)
      let how = 1  " in case random color does not exist
    else
      let current += how
      if !(0 <= current && current < len(s:mycolors))
        let current = (how>0 ? 0 : len(s:mycolors)-1)
      endif
    endif
    try
      execute 'colorscheme '.s:mycolors[current]
      break
    catch /E185:/
      call add(missing, s:mycolors[current])
    endtry
  endfor
  redraw
  if len(missing) > 0
    echo 'Error: colorscheme not found:' join(missing)
  endif
  if (a:echo_color)
    echo g:colors_name
  endif
endfunction
