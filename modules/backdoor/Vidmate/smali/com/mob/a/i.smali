.class public Lcom/mob/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:Lcom/mob/a/i;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Lcom/mob/tools/b/l$a;

.field private e:Lcom/mob/tools/b/h;

.field private f:Lcom/mob/tools/b/e;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/a/i;->b:Landroid/content/Context;

    new-instance v0, Lcom/mob/tools/b/h;

    invoke-direct {v0}, Lcom/mob/tools/b/h;-><init>()V

    iput-object v0, p0, Lcom/mob/a/i;->e:Lcom/mob/tools/b/h;

    invoke-static {p1}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/a/i;->f:Lcom/mob/tools/b/e;

    new-instance v0, Lcom/mob/tools/e;

    invoke-direct {v0}, Lcom/mob/tools/e;-><init>()V

    invoke-virtual {v0}, Lcom/mob/tools/e;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/e;->b()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/a/i;->c:Landroid/os/Handler;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/mob/tools/b/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "comm/dbs/.dh"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataHeap_1"

    invoke-static {v0, v1}, Lcom/mob/tools/b/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/tools/b/l$a;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/a/i;->d:Lcom/mob/tools/b/l$a;

    iget-object v0, p0, Lcom/mob/a/i;->d:Lcom/mob/tools/b/l$a;

    const-string v1, "time"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/b/l$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/mob/a/i;->d:Lcom/mob/tools/b/l$a;

    const-string v1, "data"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/b/l$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/mob/a/i;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic a(Lcom/mob/a/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mob/a/i;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mob/a/i;
    .locals 2

    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/a/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/a/i;

    invoke-direct {v0, p0}, Lcom/mob/a/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/a/i;->a:Lcom/mob/a/i;

    :cond_0
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "sdk.commonca.sdk"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/b/d;->a([B[B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mob/a/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "comm/locks/.dhlock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-instance v2, Lcom/mob/a/k;

    invoke-direct {v2, p0}, Lcom/mob/a/k;-><init>(Lcom/mob/a/i;)V

    invoke-static {v0, v1, v2}, Lcom/mob/a/l;->a(Ljava/io/File;ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/a/i;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/mob/a/i;->a(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mob/a/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/a/h;->a(Landroid/content/Context;)Lcom/mob/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/a/h;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v1, "plat"

    iget-object v2, p0, Lcom/mob/a/i;->f:Lcom/mob/tools/b/e;

    invoke-virtual {v2}, Lcom/mob/tools/b/e;->v()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device"

    iget-object v2, p0, Lcom/mob/a/i;->f:Lcom/mob/tools/b/e;

    invoke-virtual {v2}, Lcom/mob/tools/b/e;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mac"

    iget-object v2, p0, Lcom/mob/a/i;->f:Lcom/mob/tools/b/e;

    invoke-virtual {v2}, Lcom/mob/tools/b/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    iget-object v2, p0, Lcom/mob/a/i;->f:Lcom/mob/tools/b/e;

    invoke-virtual {v2}, Lcom/mob/tools/b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "duid"

    iget-object v5, p0, Lcom/mob/a/i;->b:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/mob/a/b/a;->a(Landroid/content/Context;Lcom/mob/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    iget-object v2, p0, Lcom/mob/a/i;->f:Lcom/mob/tools/b/e;

    invoke-virtual {v2}, Lcom/mob/tools/b/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serialno"

    iget-object v2, p0, Lcom/mob/a/i;->f:Lcom/mob/tools/b/e;

    invoke-virtual {v2}, Lcom/mob/tools/b/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "networktype"

    iget-object v2, p0, Lcom/mob/a/i;->f:Lcom/mob/tools/b/e;

    invoke-virtual {v2}, Lcom/mob/tools/b/e;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v7, p0, Lcom/mob/a/i;->e:Lcom/mob/tools/b/h;

    const/4 v8, 0x1

    aget-object v1, v1, v8

    invoke-virtual {v7, v1}, Lcom/mob/tools/b/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/f;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    move v0, v6

    goto/16 :goto_0

    :cond_1
    :try_start_1
    const-string v1, "datas"

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/mob/tools/a/i;

    const-string v7, "appkey"

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/a/a;

    invoke-interface {v1}, Lcom/mob/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v7, v1}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mob/tools/a/i;

    const-string v5, "m"

    iget-object v7, p0, Lcom/mob/a/i;->e:Lcom/mob/tools/b/h;

    invoke-virtual {v7, v4}, Lcom/mob/tools/b/h;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mob/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/mob/tools/a/i;

    const-string v5, "User-Identity"

    invoke-virtual {v0, v3}, Lcom/mob/a/h;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mob/tools/a/l$a;

    invoke-direct {v5}, Lcom/mob/tools/a/l$a;-><init>()V

    const/16 v1, 0x7530

    iput v1, v5, Lcom/mob/tools/a/l$a;->a:I

    const/16 v1, 0x7530

    iput v1, v5, Lcom/mob/tools/a/l$a;->b:I

    const-string v1, "http://c.data.mob.com/cdata"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/a/h;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/l$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/a/i;->e:Lcom/mob/tools/b/h;

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "200"

    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/mob/a/i;)Lcom/mob/tools/b/h;
    .locals 1

    iget-object v0, p0, Lcom/mob/a/i;->e:Lcom/mob/tools/b/h;

    return-object v0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "time"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/mob/a/i;->d:Lcom/mob/tools/b/l$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v0, v3, v4, v5}, Lcom/mob/tools/b/l;->a(Lcom/mob/tools/b/l$a;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/f;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/mob/a/i;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mob/a/i;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v3, 0x27

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/f;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mob/a/i;->d:Lcom/mob/tools/b/l$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mob/tools/b/l;->a(Lcom/mob/tools/b/l$a;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mob/a/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "comm/locks/.dhlock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-instance v2, Lcom/mob/a/j;

    invoke-direct {v2, p0, p1}, Lcom/mob/a/j;-><init>(Lcom/mob/a/i;Ljava/util/HashMap;)V

    invoke-static {v0, v1, v2}, Lcom/mob/a/l;->a(Ljava/io/File;ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/mob/a/i;)Lcom/mob/tools/b/l$a;
    .locals 1

    iget-object v0, p0, Lcom/mob/a/i;->d:Lcom/mob/tools/b/l$a;

    return-object v0
.end method

.method static synthetic d(Lcom/mob/a/i;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/mob/a/i;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mob/a/i;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/mob/a/i;->a()V

    iget-object v0, p0, Lcom/mob/a/i;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/mob/a/i;->b(Ljava/util/HashMap;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
