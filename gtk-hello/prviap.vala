public class PrviAp : Gtk.Application {

    public PrviAp () {
        Object (
            application_id: "com.github.stratimo.prviap",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {

        var label = new Gtk.Label ("Vala i comming :D xo");

        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Made by Stratimo";
        main_window.add (label);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        var app = new PrviAp ();
        return app.run (args);
    }
}
