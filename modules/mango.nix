{ config, pkgs, inputs, ... }:
{
  imports = [
    inputs.mango.hmModules.mango
  ];

  wayland.windowManager.mango = {
    enable = true;

    settings = {
      # =========================
      # Window Effects
      # =========================

      blur = 0;
      blur_layer = 0;
      blur_optimized = 1;
      blur_params_num_passes = 2;
      blur_params_radius = 5;
      blur_params_noise = 0.02;
      blur_params_brightness = 0.9;
      blur_params_contrast = 0.9;
      blur_params_saturation = 1.2;

      shadows = 0;
      layer_shadows = 0;
      shadow_only_floating = 1;
      shadows_size = 10;
      shadows_blur = 15;
      shadows_position_x = 0;
      shadows_position_y = 0;
      shadowscolor = "0x000000ff";

      border_radius = 6;
      no_radius_when_single = 0;
      focused_opacity = 1.0;
      unfocused_opacity = 1.0;


      # =========================
      # Animation
      # =========================

      animations = 0;
      layer_animations = 1;

      animation_type_open = "slide";
      animation_type_close = "slide";

      animation_fade_in = 1;
      animation_fade_out = 1;

      tag_animation_direction = 1;

      zoom_initial_ratio = 0.4;
      zoom_end_ratio = 0.8;

      fadein_begin_opacity = 0.5;
      fadeout_begin_opacity = 0.8;

      animation_duration_move = 500;
      animation_duration_open = 400;
      animation_duration_tag = 350;
      animation_duration_close = 800;
      animation_duration_focus = 0;

      animation_curve_open = "0.46,1.0,0.29,1";
      animation_curve_move = "0.46,1.0,0.29,1";
      animation_curve_tag = "0.46,1.0,0.29,1";
      animation_curve_close = "0.08,0.92,0,1";
      animation_curve_focus = "0.46,1.0,0.29,1";
      animation_curve_opafadeout = "0.5,0.5,0.5,0.5";
      animation_curve_opafadein = "0.46,1.0,0.29,1";


      # =========================
      # Scroller
      # =========================

      scroller_structs = 20;
      scroller_default_proportion = 0.8;
      scroller_focus_center = 0;
      scroller_prefer_center = 0;

      edge_scroller_pointer_focus = 1;
      edge_scroller_focus_allow_speed = 0.0;

      scroller_default_proportion_single = 1.0;
      scroller_proportion_preset = "0.5,0.8,1.0";


      # =========================
      # Master / Stack
      # =========================

      new_is_master = 1;
      default_mfact = 0.55;
      default_nmaster = 1;

      tag_num = 9;
      smartgaps = 0;


      # =========================
      # Dwindle
      # =========================

      dwindle_smart_split = 0;
      dwindle_drop_simple_split = 1;
      dwindle_manual_split = 0;
      dwindle_hsplit = 1;
      dwindle_vsplit = 1;
      dwindle_preserve_split = 0;


      # =========================
      # Overview
      # =========================

      hotarea_size = 10;
      enable_hotarea = 0;

      ov_tab_mode = 1;
      ov_tab_mode_launch_next = 0;

      overviewgappi = 5;
      overviewgappo = 30;


      # =========================
      # Misc
      # =========================

      no_border_when_single = 0;

      axis_bind_apply_timeout = 100;

      focus_on_activate = 1;
      idleinhibit_ignore_visible = 0;

      sloppyfocus = 1;
      warpcursor = 1;

      focus_cross_monitor = 0;
      focus_cross_tag = 0;

      enable_floating_snap = 0;
      snap_distance = 30;

      cursor_size = 24;

      drag_tile_to_tile = 1;
      drag_tile_small = 1;


      # =========================
      # Keyboard
      # =========================

      numlockon = 0;
      xkb_rules_layout = "us";

      repeat_rate = 35;
      repeat_delay = 200;


      # =========================
      # Trackpad
      # =========================

      trackpad_natural_scrolling = 1;
      disable_trackpad = 0;

      tap_to_click = 1;
      tap_and_drag = 1;
      drag_lock = 1;

      swipe_min_threshold = 1;


      # =========================
      # Mouse
      # =========================

      mouse_natural_scrolling = 0;


      # =========================
      # Appearance
      # =========================

      bordercolor = "0x595959aa";

      gappih = 5;
      gappiv = 5;
      gappoh = 10;
      gappov = 10;

      scratchpad_width_ratio = 0.8;
      scratchpad_height_ratio = 0.9;

      borderpx = 4;

      rootcolor = "0x201b14ff";
      dropcolor = "0x8FBA7C55";
      splitcolor = "0xEB441EFF";
      focuscolor = "0xc9b890ff";
      maximizescreencolor = "0x89aa61ff";
      urgentcolor = "0xad401fff";
      scratchpadcolor = "0x516c93ff";
      globalcolor = "0xb153a7ff";
      overlaycolor = "0x14a57cff";


      # =========================
      # Layout Rules
      # =========================

      # Keep workspaces starting as normal tile layout.
      # Use SUPER+X to switch to scroller.
      tagrule = [
        "id:1,layout_name:tile"
        "id:2,layout_name:tile"
        "id:3,layout_name:tile"
        "id:4,layout_name:tile"
        "id:5,layout_name:tile"
        "id:6,layout_name:tile"
        "id:7,layout_name:tile"
        "id:8,layout_name:tile"
        "id:9,layout_name:tile"
      ];


      # =========================
      # Key Bindings
      # =========================

      bind = [

        # ---- Basic ----

        "SUPER+SHIFT,r,reload_config"

        "SUPER,Return,spawn,kitty"

        "SUPER,d,spawn,wmenu-run -l 10"

        "SUPER,q,killclient"

        "SUPER,m,quit"


        # ---- Overview ----

        "SUPER,0,toggleoverview"

	"NONE,XF86AudioRaiseVolume,spawn,wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+ -l 1.0"
        "NONE,XF86AudioLowerVolume,spawn,wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1-"
        "NONE,XF86AudioMute,spawn,wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        "NONE,XF86AudioMicMute,spawn,wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
	
	"NONE,XF86AudioPlay,spawn,playerctl play-pause"
	"NONE,XF86AudioStop,spawn,playerctl stop"
	"NONE,XF86AudioPrev,spawn,playerctl previous"
	"NONE,XF86AudioNext,spawn,playerctl next"

	"NONE,XF86MonBrightnessUp,spawn,brightnessctl --class=backlight set +10%"
	"NONE,XF86MonBrightnessDown,spawn,brightnessctl --class=backlight set 10%-"




        # ---- Focus / Navigation ----

        "SUPER,j,focusstack,next"
        "SUPER,k,focusstack,prev"

        "SUPER,h,focusdir,left"
        "SUPER,l,focusdir,right"

        "SUPER,Up,focusdir,up"
        "SUPER,Down,focusdir,down"


        # ---- Move Windows ----

        "SUPER+SHIFT,j,exchange_client,down"
        "SUPER+SHIFT,k,exchange_client,up"
        "SUPER+SHIFT,h,exchange_client,left"
        "SUPER+SHIFT,l,exchange_client,right"


        # ---- Layouts ----

        "SUPER,t,setlayout,tile"
        "SUPER,v,setlayout,vertical_tile"
        "SUPER,c,setlayout,spiral"
        "SUPER,x,setlayout,scroller"

        "SUPER,n,switch_layout"


        # ---- Gaps ----

        "SUPER,a,togglegaps"


        # ---- Floating / Fullscreen ----

        "SUPER,f,togglefloating"
        "SUPER+SHIFT,f,togglefullscreen"


        # ---- Global / Jump / Scratchpad ----

        "SUPER,g,toggleglobal"

        "ALT,Tab,togglejump"

        "ALT,z,toggle_scratchpad"


        # ---- Maximize / Fake Fullscreen ----

        "ALT,a,togglemaximizescreen"

        "ALT,f,togglefullscreen"

        "ALT+SHIFT,f,togglefakefullscreen"


        # ---- Minimize / Overlay ----

        "SUPER,i,minimized"
        "SUPER+SHIFT,i,restore_minimized"

        "SUPER,o,toggleoverlay"


        # ---- Scroller ----

        "SUPER+SHIFT,h,scroller_stack,left"
        "SUPER+SHIFT,l,scroller_stack,right"

        "ALT,e,set_proportion,1.0"
        "ALT,x,switch_proportion_preset"


        # ---- Dwindle ----

        "ALT+SHIFT,Return,dwindle_toggle_split_direction"


        # ---- Workspace / Tags ----

        "SUPER,1,view,1,0"
        "SUPER,2,view,2,0"
        "SUPER,3,view,3,0"
        "SUPER,4,view,4,0"
        "SUPER,5,view,5,0"
        "SUPER,6,view,6,0"
        "SUPER,7,view,7,0"
        "SUPER,8,view,8,0"
        "SUPER,9,view,9,0"


        # ---- Move Window To Workspace ----

        "SUPER+SHIFT,1,tag,1,0"
        "SUPER+SHIFT,2,tag,2,0"
        "SUPER+SHIFT,3,tag,3,0"
        "SUPER+SHIFT,4,tag,4,0"
        "SUPER+SHIFT,5,tag,5,0"
        "SUPER+SHIFT,6,tag,6,0"
        "SUPER+SHIFT,7,tag,7,0"
        "SUPER+SHIFT,8,tag,8,0"
        "SUPER+SHIFT,9,tag,9,0"


        # ---- Workspace Navigation ----

        "SUPER,Left,viewtoleft,0"
        "SUPER,Right,viewtoright,0"

        "CTRL,Left,viewtoleft_have_client,0"
        "CTRL,Right,viewtoright_have_client,0"

        "CTRL+SUPER,Left,tagtoleft,0"
        "CTRL+SUPER,Right,tagtoright,0"


        # ---- Monitor ----

        "ALT+SHIFT,Left,focusmon,left"
        "ALT+SHIFT,Right,focusmon,right"

        "SUPER+ALT,Left,tagmon,left"
        "SUPER+ALT,Right,tagmon,right"


        # ---- Gaps Size ----

        "ALT+SHIFT,X,incgaps,1"
        "ALT+SHIFT,Z,incgaps,-1"
        "ALT+SHIFT,R,togglegaps"


        # ---- Floating Window Movement ----

        "CTRL+SHIFT,Up,movewin,+0,-50"
        "CTRL+SHIFT,Down,movewin,+0,+50"
        "CTRL+SHIFT,Left,movewin,-50,+0"
        "CTRL+SHIFT,Right,movewin,+50,+0"


        # ---- Floating Window Resize ----

        "CTRL+ALT,Up,resizewin,+0,-50"
        "CTRL+ALT,Down,resizewin,+0,+50"
        "CTRL+ALT,Left,resizewin,-50,+0"
        "CTRL+ALT,Right,resizewin,+50,+0"
      ];


      # =========================
      # Mouse
      # =========================

      mousebind = [
        "SUPER,btn_left,moveresize,curmove"
        "NONE,btn_middle,togglemaximizescreen,0"
        "SUPER,btn_right,moveresize,curresize"
      ];


      # =========================
      # Axis / Scroll
      # =========================

      axisbind = [
        "SUPER,UP,viewtoleft_have_client"
        "SUPER,DOWN,viewtoright_have_client"
      ];

      gesturebind = [
        # 3-finger swipe = focus windows
        "none,left,3,focusdir,left"
        "none,right,3,focusdir,right"
        "none,up,3,focusdir,up"
        "none,down,3,focusdir,down"

        # 4-finger swipe = change workspace
        "none,left,4,viewtoleft_have_client"
        "none,right,4,viewtoright_have_client"

        # 4-finger swipe = overview
        "none,up,4,toggleoverview"
        "none,down,4,toggleoverview"
      ];


      # =========================
      # Layer Rules
      # =========================

      layerrule = [
        "animation_type_open:zoom,layer_name:rofi"
        "animation_type_close:zoom,layer_name:rofi"
      ];
    };
  };
}
