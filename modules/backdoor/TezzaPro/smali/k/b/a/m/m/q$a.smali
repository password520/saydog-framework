.class public Lk/b/a/m/m/q$a;
.super Ljava/lang/Object;
.source "MultiModelLoader.java"

# interfaces
.implements Lk/b/a/m/k/d;
.implements Lk/b/a/m/k/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/m/m/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk/b/a/m/k/d<",
        "TData;>;",
        "Lk/b/a/m/k/d$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/b/a/m/k/d<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field public final c:Lj/h/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/h/k/b<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Lk/b/a/g;

.field public f:Lk/b/a/m/k/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/m/k/d$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lj/h/k/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk/b/a/m/k/d<",
            "TData;>;>;",
            "Lj/h/k/b<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lk/b/a/m/m/q$a;->c:Lj/h/k/b;

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iput-object p1, p0, Lk/b/a/m/m/q$a;->b:Ljava/util/List;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lk/b/a/m/m/q$a;->d:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lk/b/a/m/m/q$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/m/k/d;

    invoke-interface {v0}, Lk/b/a/m/k/d;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lk/b/a/m/m/q$a;->g:Ljava/util/List;

    const-string v1, "Argument must not be null"

    .line 11
    invoke-static {v0, v1}, Lj/b/k/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0}, Lk/b/a/m/m/q$a;->d()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lk/b/a/m/m/q$a;->f:Lk/b/a/m/k/d$a;

    invoke-interface {v0, p1}, Lk/b/a/m/k/d$a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lk/b/a/m/m/q$a;->d()V

    :goto_0
    return-void
.end method

.method public a(Lk/b/a/g;Lk/b/a/m/k/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/g;",
            "Lk/b/a/m/k/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lk/b/a/m/m/q$a;->e:Lk/b/a/g;

    .line 2
    iput-object p2, p0, Lk/b/a/m/m/q$a;->f:Lk/b/a/m/k/d$a;

    .line 3
    iget-object p2, p0, Lk/b/a/m/m/q$a;->c:Lj/h/k/b;

    invoke-interface {p2}, Lj/h/k/b;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lk/b/a/m/m/q$a;->g:Ljava/util/List;

    .line 4
    iget-object p2, p0, Lk/b/a/m/m/q$a;->b:Ljava/util/List;

    iget v0, p0, Lk/b/a/m/m/q$a;->d:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk/b/a/m/k/d;

    invoke-interface {p2, p1, p0}, Lk/b/a/m/k/d;->a(Lk/b/a/g;Lk/b/a/m/k/d$a;)V

    .line 5
    iget-boolean p1, p0, Lk/b/a/m/m/q$a;->h:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lk/b/a/m/m/q$a;->cancel()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/m/m/q$a;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lk/b/a/m/m/q$a;->c:Lj/h/k/b;

    invoke-interface {v1, v0}, Lj/h/k/b;->a(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lk/b/a/m/m/q$a;->g:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lk/b/a/m/m/q$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/a/m/k/d;

    .line 5
    invoke-interface {v1}, Lk/b/a/m/k/d;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Lk/b/a/m/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/m/m/q$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/m/k/d;

    invoke-interface {v0}, Lk/b/a/m/k/d;->c()Lk/b/a/m/a;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk/b/a/m/m/q$a;->h:Z

    .line 2
    iget-object v0, p0, Lk/b/a/m/m/q$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/a/m/k/d;

    .line 3
    invoke-interface {v1}, Lk/b/a/m/k/d;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lk/b/a/m/m/q$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lk/b/a/m/m/q$a;->d:I

    iget-object v1, p0, Lk/b/a/m/m/q$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 3
    iget v0, p0, Lk/b/a/m/m/q$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/b/a/m/m/q$a;->d:I

    .line 4
    iget-object v0, p0, Lk/b/a/m/m/q$a;->e:Lk/b/a/g;

    iget-object v1, p0, Lk/b/a/m/m/q$a;->f:Lk/b/a/m/k/d$a;

    invoke-virtual {p0, v0, v1}, Lk/b/a/m/m/q$a;->a(Lk/b/a/g;Lk/b/a/m/k/d$a;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lk/b/a/m/m/q$a;->g:Ljava/util/List;

    const-string v1, "Argument must not be null"

    .line 6
    invoke-static {v0, v1}, Lj/b/k/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lk/b/a/m/m/q$a;->f:Lk/b/a/m/k/d$a;

    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lk/b/a/m/m/q$a;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lk/b/a/m/k/d$a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
