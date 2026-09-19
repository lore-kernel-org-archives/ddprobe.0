Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B25630F927
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789795834; cv=none; b=fbDvZwTkhGsdxcHRMIdXVFUu+lz5UYZKN+7m6P1avvvhs8pSJTpWR0dOGifVyXXJGYiCW0+3ts2jZF8vVufOSa2H3x2SAuIBjEVEi34D/wDhersBrMCTWD1L9/2oyYSxDDy9r7bBQiYRswiOzsW3Uf1+i8JRhHAb2DjEyUykScA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789795834; c=relaxed/simple;
	bh=tesmSCwTnTIiszdwkBAsErAgNerJ2vPL+6k7+GrxScE=;
	h=To:Subject:From:Message-Id:Date; b=VROJtgJGKlS/jCTj90ng+JAo0Pl1bKyjyqq98My9gGAaa1cOk5stHYVz8y0p65PLSWZQNpDRvnIpZcNo/mOV2RgeFk4eVPOz6vIwIxjw6t3TNKKo5nUbscSq6hA09GYHXHkd+FqmIZczFftmFP9DWkKf7Zdx7jwxolSqfKg1Io8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhxkbBvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhxkbBvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59D4C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789795833;
	bh=tesmSCwTnTIiszdwkBAsErAgNerJ2vPL+6k7+GrxScE=;
	h=To:Subject:From:Date:From;
	b=QhxkbBvJgZqRqs/JyDr4EcnnhoDBxWoh6tIXOjDzRlmZparjqFADnvPGqQBS5L1Kf
	 Kp14uzf/hdQR19ghJsG015IwxXkvUPlnLh5gM4IXetilcjHs0PV37Xqp0miKblekxU
	 WfmlGUDxIMgUvSHJNbFzHpjjKc1NpDegfwkzjKBku64SxRLFbejryp+fg2kSzEAv8T
	 vuQ/zpu3arI9lHt0Gqq5vyVlPlnle1gB0qiHlUF7/IqEymCgskEs4sblEybh6U784I
	 /JN6VBqPgv2upPsySdpnpDPpRJFpP0DSxB6K+bTlkh+M68dQ6lmSRCFZWyIQYKjmcd
	 6BpyRmAcPSuGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC09C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979583369.31089.5061744952402628793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e660692382ad1032172fe94112d3488b1eb73b52aaa3032013aeb6401e28c12a
Date: Sat, 19 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789795833
