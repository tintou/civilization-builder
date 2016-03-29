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

public class CivilizationBuilder.App : Gtk.Application {
    private static App default_app;
    public static unowned App get_instance () {
        if (default_app == null) {
            default_app = new App ();
        }

        return default_app;
    }

    private App () {
        
    }

    protected override void activate () {
        var window = new MainWindow ();
        window.show_all ();
        Gtk.main ();
    }
}

public static int main (string[] args) {
    var app = CivilizationBuilder.App.get_instance ();
    return app.run (args);
}
