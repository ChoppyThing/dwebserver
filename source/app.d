import vibe.vibe;
import admin.post;
import home.homepage;

void main()
{
	auto router = new URLRouter;
	router.registerWebInterface(new Homepage);
	router.registerWebInterface(new AdminPost);
	router.get("*", serveStaticFiles("public/"));

	auto settings = new HTTPServerSettings;
	settings.port = 8080;
	settings.bindAddresses = ["::1", "127.0.0.1"];
	listenHTTP(settings, router);

	logInfo("Please open http://127.0.0.1:8080/ in your browser.");
	runApplication();
}
