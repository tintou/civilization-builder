// -*- Mode: vala; indent-tabs-mode: nil; tab-width: 4 -*-
/*
 *  Copyright (C) 2016 Corentin Noël <corentin@elementary.io>
 *
 *  This program or library is free software; you can redistribute it
 *  and/or modify it under the terms of the GNU General Public
 *  License as published by the Free Software Foundation; either
 *  version 3 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 *  General Public License for more details.
 *
 *  You should have received a copy of the GNU General
 *  Public License along with this library; if not, write to the
 *  Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 *  Boston, MA 02110-1301 USA.
 */

public class CivilizationBuilder.GamePane : Gtk.Grid {
    construct {
        var grid = new Gtk.Grid ();
        grid.get_style_context ().add_class ("panel");
        var button_grid = new Gtk.Grid ();
        button_grid.halign = Gtk.Align.END;
        button_grid.margin = 6;
        button_grid.column_spacing = 2;
        button_grid.row_spacing = 2;
        var button1 = new Gtk.Button.with_label ("A");
        var button2 = new Gtk.Button.with_label ("B");
        var button3 = new Gtk.Button.with_label ("C");
        var button4 = new Gtk.Button.with_label ("D");
        var button5 = new Gtk.Button.with_label ("E");
        var button6 = new Gtk.Button.with_label ("F");
        button_grid.attach (button1, 0, 0, 1, 1);
        button_grid.attach (button2, 1, 0, 1, 1);
        button_grid.attach (button3, 2, 0, 1, 1);
        button_grid.attach (button4, 0, 1, 1, 1);
        button_grid.attach (button5, 1, 1, 1, 1);
        button_grid.attach (button6, 2, 1, 1, 1);
        grid.add (button_grid);
        var view = new Gtk.Label (null);
        view.expand = true;
        add (view);
        add (grid);
    }

    public GamePane () {
        
    }
}
