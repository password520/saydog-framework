.class public final enum Lj/f/a/h/c$b;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/f/a/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj/f/a/h/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lj/f/a/h/c$b;

.field public static final enum c:Lj/f/a/h/c$b;

.field public static final enum d:Lj/f/a/h/c$b;

.field public static final synthetic e:[Lj/f/a/h/c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lj/f/a/h/c$b;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lj/f/a/h/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj/f/a/h/c$b;->b:Lj/f/a/h/c$b;

    new-instance v0, Lj/f/a/h/c$b;

    const/4 v2, 0x1

    const-string v3, "STRONG"

    invoke-direct {v0, v3, v2}, Lj/f/a/h/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj/f/a/h/c$b;->c:Lj/f/a/h/c$b;

    new-instance v0, Lj/f/a/h/c$b;

    const/4 v3, 0x2

    const-string v4, "WEAK"

    invoke-direct {v0, v4, v3}, Lj/f/a/h/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj/f/a/h/c$b;->d:Lj/f/a/h/c$b;

    const/4 v4, 0x3

    new-array v4, v4, [Lj/f/a/h/c$b;

    sget-object v5, Lj/f/a/h/c$b;->b:Lj/f/a/h/c$b;

    aput-object v5, v4, v1

    sget-object v1, Lj/f/a/h/c$b;->c:Lj/f/a/h/c$b;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lj/f/a/h/c$b;->e:[Lj/f/a/h/c$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj/f/a/h/c$b;
    .locals 1

    .line 1
    const-class v0, Lj/f/a/h/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj/f/a/h/c$b;

    return-object p0
.end method

.method public static values()[Lj/f/a/h/c$b;
    .locals 1

    .line 1
    sget-object v0, Lj/f/a/h/c$b;->e:[Lj/f/a/h/c$b;

    invoke-virtual {v0}, [Lj/f/a/h/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj/f/a/h/c$b;

    return-object v0
.end method