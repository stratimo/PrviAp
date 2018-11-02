public class PrviAp : Gtk.Application {

    public PrviAp () {
        Object (
            application_id: "com.github.stratimo.prviap",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {

        var button_hello = new Gtk.Button.with_label ("Click me!");
        button_hello.margin = 24;
        button_hello.clicked.connect (() => {
            button_hello.label = "Made by Stratimo !";
            button_hello.sensitive = false;
});

        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Made by Stratimo";
        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        var app = new PrviAp ();
        return app.run (args);
    }
}
