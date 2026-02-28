Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFA242B735
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772276694; cv=none; b=fpfy801AOEmZxrlidsii9dHBcOzdBX84xXjiHtL/e7xJ64yIoL2c8j8HQoL6lkCwOOPiOGT35Uumx5hOrr7pTpW+xCQlNcy+400ZNUELg73M0zuGnkvQLkcibZWkHYk6FnZmAJu+doFtjzIEuIdk9RvhKU6p+/u7V1hMxexyY8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772276694; c=relaxed/simple;
	bh=YKaL2ijDUX8l1UeAmjU+9u9UGquKMLoJK7xN9XTPbjM=;
	h=To:Subject:From:Message-Id:Date; b=WTYWrepvSllKTOGsk1o1wA+VrC85e/yZmwTW+JsDIEdiOp76QQsTqZ3zESCSWsZYr2vAPTJNBcG4t0kJYSPGVMDFHLZtzzxu3HrXrAkJvubuRqQDizlxZw7rA1p9nLyLHojZ/Q1/Yjjy9jGmdYK5VWHICInKawAqJ+bkMtq3ngk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kb/lgh/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kb/lgh/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3034C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772276693;
	bh=YKaL2ijDUX8l1UeAmjU+9u9UGquKMLoJK7xN9XTPbjM=;
	h=To:Subject:From:Date:From;
	b=kb/lgh/JYlUkeTODFZwNhLVtE8LQhQgAUHIM2jqPuXhBf/VKduVoaxaN3UclQQY7R
	 7n+sBZ+HpZPS/14kY7TrzOL0IhB+Xz2sD1x1/UytTieSC3mbwAyh/xcMlrd2PkamOf
	 fjB6MWXdSCqn2667fjf/d5budhZk0oG27iEtMuaIYHe1XXwTlTqi8pL3gBDIGdroMN
	 Nj76weH3jix3S4dQujS1kNY/CPtSmBd0OfnZTBgfh73yvhKPjcnhScMBgdzwPQr/2v
	 fPbP2F31RRl6FwJXam+ksYnk9sOhSA8BbNwwNGt/LBUiUPpfmNxsaKIzOHW5+dlQ/x
	 /zT6PzXvCTtxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C0FEE4E9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227669358.28671.11501388951586928397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f582d47f7b573026b4cb940f5bbe63dc08eaf35eb6566e38925bf53211b73832
Date: Sat, 28 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772276693
