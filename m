Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402EA221721
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777616254; cv=none; b=sWLSYPM7JKZ0jcF/mXxP6V7ydSRIsPZ8fTlIPUlPGAq52lrC1IJpoQgOA6MYesQn4ZzJlU2zBtILPBH5c8SaEO6i2Ws3Gk4revZKAV3bD18PNUNodX5oxXezmmvjXMgBldnQ+Sk0Mp0hc8g23XtWVzNfwQQDxsSioWAa7qklmPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777616254; c=relaxed/simple;
	bh=MPvNGFqGHj8yo5m9Yjid/tQgwfQ9TTvsbolFkz0IT6I=;
	h=To:Subject:From:Message-Id:Date; b=qyTUuf2UYkL1W7DBT96qBV0sABPlueZcKeNrIL3rM+GsJBJurBJs8hPN+Rm6dE4iMygXydxpWgzTdiZ5B2IJCI9w3Zx56pufP4z2hw5xdPKnliATc8sYixJD2tF2t5ggfQp4BVPkRPfGSKddiCG4INENT2HgCdTMWETEjryRD5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIcmOdSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIcmOdSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0116C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777616253;
	bh=MPvNGFqGHj8yo5m9Yjid/tQgwfQ9TTvsbolFkz0IT6I=;
	h=To:Subject:From:Date:From;
	b=GIcmOdSbC2ty+Edts9P0HhHLKjxuyyJV46yT41Z6vbICL03WU5cMlOlJyrG0nwJoD
	 s0qZYkB94lNoh5fPq1GCTflGlwaJ0UxO6X4UGfyWRW7GkU34Uwu6c8jnu1SgJDAIW4
	 elNZOJO6Fgd3HQZJeuvXpypxE+oYtYAD8EwWgVrK37K1nKsDwRA5UDHZT1BE9K154W
	 jsLMY0BJ1WozWwa0m9OPeXMY0WE8qDTaTzY+ev92fKmwbBdtzEIgskH5/U8K/9mO6S
	 /SviK2FTJUXNn4qyrxwNzw2yHDR1YO3B0hG4eRL5Lq796pWTAaEsEckhI/VtPqpZ+W
	 1Et6XXC6RZgXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF6BFF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761625368.20308.15764280454922295450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7878c6dd9dcfb74fa2f15d1f3a04c17be9feb72f2ac103dfc1f8a820a790afaa
Date: Fri, 01 May 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777616253
