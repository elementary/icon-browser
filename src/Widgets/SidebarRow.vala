/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2017-2022 elementary, Inc. (https://elementary.io)
 */

public class SidebarRow : Gtk.ListBoxRow {
    public CategoryView.Category category { get; construct; }

    public SidebarRow (CategoryView.Category category) {
        Object (category: category);
    }

    construct {
        var label = new Gtk.Label (category.to_string ()) {
            xalign = 0
        };

        child = label;
    }
}
