Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86AB18A6A8
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777424853; cv=none; b=GwABebGeb9kbCiqqJ4hr8lmfxBKrppYGfie515g3eYMqALH2uQcgHUbK+elIW3tklRfBdd4EI611qyefBr6RmQP35UMklTXVh27KZYdWWL2jpS9gdo7ejqp5pFHSifZvxHA1/yeUFgUCAUEiJvxmHkqWrLgj5p569tJusACBRWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777424853; c=relaxed/simple;
	bh=L5wZnTHlrJ7ZQwbco9NUtLDEPj0admzPSL8guk2KrCc=;
	h=To:Subject:From:Message-Id:Date; b=gC8UkHJIk6amKwyH4yoZUOAz9nAzQoeEewS7lmLDQ+/tU61Y2th6E9Q8KYkP+fSO6mewsBfA/fmAxBnVv4F2kjUAK3XroY2a39M8FkQkS6aFOgJG9yEfDKMtx/a9p/Vgq93u2fd7GNUPh7/aHCujYxFO3yBbVB3+HNnVIcy9Vj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cH4UYbU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cH4UYbU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA999C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777424853;
	bh=L5wZnTHlrJ7ZQwbco9NUtLDEPj0admzPSL8guk2KrCc=;
	h=To:Subject:From:Date:From;
	b=cH4UYbU8u1tfDG3mXBz/R3mBnHnKbZL/Zb07k10KLcNGE/Q/zL7Hoz6+Ap7x3Wpbv
	 jxPYrtZIMJPwUXpOIONHpJxRtyjqMnXpniKy7tb2ni9sag3slcgDrXOyUr8Nf9l6ag
	 zllfFm4KV9L3j8ZmW5oaUyWhJl/w9cQF3T5Et8niYWpqzUrF47mh+aqCBcI3mC2T3y
	 g2VrwGlhrODQYvgWrgoSqqcoYxey9pzfOAcQeeoZOOv855X7pDt+ipAi2+WfwNA0kc
	 22y0iUv0q+YH1koS64SJPbGdWJ0p/NbNUCbFi0fX0ufEIuoizpgmNbp1tSbGXEDC1C
	 2umdW6M1vnFSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95CBFF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742485368.20452.13533970356805857388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9006272060d99e20a5653c3b58634aa3575f3f4702415a79f11ee9b3eb824d61
Date: Wed, 29 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777424853
