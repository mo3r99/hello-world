public class MyApp : Gtk.Application {
    public MyApp () {
        Object (application_id: "com.githup.yourusername.yourrespositoryname",
        flags: ApplicationFlags.FLAGS_NONE);
    }
    
    protected override void activate () {
        var window = new Gtk.ApplicationWindow (this);

        var grid = new Gtk.Grid ();
        grid.orientation = Gtk.Orientation.VERTICAL;
        grid.row_spacing = 6;
        grid.column_spacing = 6;
        
        var button = new Gtk.Button.with_label ("Click Here!");
        var label = new Gtk.Label (null);
        
        var rotate = new Gtk.Button.with_label ("Rotate");
        var rotated = new Gtk.Label ("Horizontal");
        
        grid.attach (button, 0, 0, 1, 1);
        grid.attach (label, 1, 0, 1, 1);
        grid.attach (rotate, 0, 1, 1, 1);
        grid.attach (rotated, 1, 1, 1, 1);
        
        window.add (grid);
        
        button.clicked.connect (() => {
            label.label = "Hello World!";
            button.sensitive = false;
        });
        
        rotate.clicked.connect (() => {
            rotated.angle = 90;
            rotated.label = "Vertical";
            rotate.sensitive = false;
        });
        
        window.show ();
    }
    
    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}
