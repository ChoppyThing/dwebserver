module admin.post;

import vibe.vibe;

@path("/tchoutchou")
class AdminPost
{
    @path("/")
    void index() 
    {
        render!"admin/post.dt";
    }

    @path("/blah")
    void test()
    {
        render!"admin/post.dt";
    }
}