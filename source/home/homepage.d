module home.homepage;

import vibe.vibe;

@path("/")
final class Homepage {

	void homepage()
	{
		render!"home/homepage.dt";
	}
}