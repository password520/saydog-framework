.class public final Lcom/google/android/exoplayer2/d/h/f;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/d/h/h;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/i/o;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/exoplayer2/d/o;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Lcom/google/android/exoplayer2/Format;

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/google/android/exoplayer2/i/o;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/i/o;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/h/f;->a:Lcom/google/android/exoplayer2/i/o;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/google/android/exoplayer2/d/h/f;->e:I

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/d/h/f;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/i/o;[BI)Z
    .locals 2

    .line 133
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i/o;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/d/h/f;->f:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 134
    iget v1, p0, Lcom/google/android/exoplayer2/d/h/f;->f:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/i/o;->a([BII)V

    .line 135
    iget p1, p0, Lcom/google/android/exoplayer2/d/h/f;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/d/h/f;->f:I

    .line 136
    iget p1, p0, Lcom/google/android/exoplayer2/d/h/f;->f:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/android/exoplayer2/i/o;)Z
    .locals 4

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i/o;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 148
    iget v0, p0, Lcom/google/android/exoplayer2/d/h/f;->g:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/d/h/f;->g:I

    .line 149
    iget v0, p0, Lcom/google/android/exoplayer2/d/h/f;->g:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i/o;->g()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/d/h/f;->g:I

    .line 150
    iget v0, p0, Lcom/google/android/exoplayer2/d/h/f;->g:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/b/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object p1, p0, Lcom/google/android/exoplayer2/d/h/f;->a:Lcom/google/android/exoplayer2/i/o;

    iget-object p1, p1, Lcom/google/android/exoplayer2/i/o;->a:[B

    iget v0, p0, Lcom/google/android/exoplayer2/d/h/f;->g:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 152
    iget-object p1, p0, Lcom/google/android/exoplayer2/d/h/f;->a:Lcom/google/android/exoplayer2/i/o;

    iget-object p1, p1, Lcom/google/android/exoplayer2/i/o;->a:[B

    iget v0, p0, Lcom/google/android/exoplayer2/d/h/f;->g:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, p1, v2

    .line 153
    iget-object p1, p0, Lcom/google/android/exoplayer2/d/h/f;->a:Lcom/google/android/exoplayer2/i/o;

    iget-object p1, p1, Lcom/google/android/exoplayer2/i/o;->a:[B

    const/4 v0, 0x2

    iget v3, p0, Lcom/google/android/exoplayer2/d/h/f;->g:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 154
    iget-object p1, p0, Lcom/google/android/exoplayer2/d/h/f;->a:Lcom/google/android/exoplayer2/i/o;

    iget-object p1, p1, Lcom/google/android/exoplayer2/i/o;->a:[B

    const/4 v0, 0x3

    iget v3, p0, Lcom/google/android/exoplayer2/d/h/f;->g:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    const/4 p1, 0x4

    .line 155
    iput p1, p0, Lcom/google/android/exoplayer2/d/h/f;->f:I

    .line 156
    iput v1, p0, Lcom/google/android/exoplayer2/d/h/f;->g:I

    return v2

    :cond_1
    return v1
.end method

.method private c()V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/h/f;->a:Lcom/google/android/exoplayer2/i/o;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i/o;->a:[B

    .line 168
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/h/f;->i:Lcom/google/android/exoplayer2/Format;

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/h/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/d/h/f;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/b/l;->a([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/d/h/f;->i:Lcom/google/android/exoplayer2/Format;

    .line 170
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/h/f;->d:Lcom/google/android/exoplayer2/d/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/d/h/f;->i:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/d/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 172
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/b/l;->b([B)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/d/h/f;->j:I

    const-wide/32 v1, 0xf4240

    .line 176
    invoke-static {v0}, Lcom/google/android/exoplayer2/b/l;->a([B)I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/d/h/f;->i:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->s:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/d/h/f;->h:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/google/android/exoplayer2/d/h/f;->e:I

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer2/d/h/f;->f:I

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer2/d/h/f;->g:I

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lcom/google/android/exoplayer2/d/h/f;->k:J

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/d/g;Lcom/google/android/exoplayer2/d/h/w$d;)V
    .locals 1

    .line 77
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/d/h/w$d;->a()V

    .line 78
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/d/h/w$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/h/f;->c:Ljava/lang/String;

    .line 79
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/d/h/w$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/d/g;->a(II)Lcom/google/android/exoplayer2/d/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/d/h/f;->d:Lcom/google/android/exoplayer2/d/o;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/i/o;)V
    .locals 10

    .line 89
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i/o;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 90
    iget v0, p0, Lcom/google/android/exoplayer2/d/h/f;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i/o;->b()I

    move-result v0

    iget v2, p0, Lcom/google/android/exoplayer2/d/h/f;->j:I

    iget v3, p0, Lcom/google/android/exoplayer2/d/h/f;->f:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 106
    iget-object v2, p0, Lcom/google/android/exoplayer2/d/h/f;->d:Lcom/google/android/exoplayer2/d/o;

    invoke-interface {v2, p1, v0}, Lcom/google/android/exoplayer2/d/o;->a(Lcom/google/android/exoplayer2/i/o;I)V

    .line 107
    iget v2, p0, Lcom/google/android/exoplayer2/d/h/f;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/d/h/f;->f:I

    .line 108
    iget v0, p0, Lcom/google/android/exoplayer2/d/h/f;->f:I

    iget v2, p0, Lcom/google/android/exoplayer2/d/h/f;->j:I

    if-ne v0, v2, :cond_0

    .line 109
    iget-object v3, p0, Lcom/google/android/exoplayer2/d/h/f;->d:Lcom/google/android/exoplayer2/d/o;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/d/h/f;->k:J

    const/4 v6, 0x1

    iget v7, p0, Lcom/google/android/exoplayer2/d/h/f;->j:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/d/o;->a(JIIILcom/google/android/exoplayer2/d/o$a;)V

    .line 110
    iget-wide v2, p0, Lcom/google/android/exoplayer2/d/h/f;->k:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/d/h/f;->h:J

    add-long v6, v2, v4

    iput-wide v6, p0, Lcom/google/android/exoplayer2/d/h/f;->k:J

    .line 111
    iput v1, p0, Lcom/google/android/exoplayer2/d/h/f;->e:I

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/h/f;->a:Lcom/google/android/exoplayer2/i/o;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i/o;->a:[B

    const/16 v2, 0x12

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/d/h/f;->a(Lcom/google/android/exoplayer2/i/o;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/google/android/exoplayer2/d/h/f;->c()V

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/h/f;->a:Lcom/google/android/exoplayer2/i/o;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i/o;->c(I)V

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/h/f;->d:Lcom/google/android/exoplayer2/d/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/d/h/f;->a:Lcom/google/android/exoplayer2/i/o;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/d/o;->a(Lcom/google/android/exoplayer2/i/o;I)V

    const/4 v0, 0x2

    .line 101
    iput v0, p0, Lcom/google/android/exoplayer2/d/h/f;->e:I

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/d/h/f;->b(Lcom/google/android/exoplayer2/i/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lcom/google/android/exoplayer2/d/h/f;->e:I

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 0

    return-void
.end method
