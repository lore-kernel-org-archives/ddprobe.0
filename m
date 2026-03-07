Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE9C30EF8B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772877294; cv=none; b=PnMNkb2kgEdcQLWfTLIUXwCGkE6LVz/2/tRSpAq4orYhomWw/DJV/V1HeniShZSaoOlxBTm1j8WR2Ml79So9OalHy7ePHBuh5oyzmyBphqFDs+Y9qTno0D/14C1/r6n4p0VUn9LvsoblAtHru9vwZJ75/WuqJWsZ+M/Y1n91cAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772877294; c=relaxed/simple;
	bh=2ajer2a6zJt78Dm2IDdr42bdStgML/wNlyYIUpOXMZU=;
	h=To:Subject:From:Message-Id:Date; b=Fm8B+Y6UYT20mKDwwg8FJkzbtWWBFCOSfq9OLdnhh+KZoBCZEwIKHCYHgcXeHMCSmSfSuI8I/qCl361ty9SwC9Wr35ccLi4NaaANQdJ7LoQD+EBBkHlqyxbFf6zXrJjcCDF7b7RAVXdO9biDFO8Do/OtNdCGlkA5bo9GPL2VxFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uE1tV1nw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uE1tV1nw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0EEC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772877293;
	bh=2ajer2a6zJt78Dm2IDdr42bdStgML/wNlyYIUpOXMZU=;
	h=To:Subject:From:Date:From;
	b=uE1tV1nwxZu+vnwvNiSxFGAZqNFf6e2/G6iIAZlW+l1xsZ6TEzGKiCnc7iyAC24da
	 BO67W0oON+T0khPzKJu1GZWGzqfHSis5e4UXmjRWfq7pDiNks6JMU9C0odWu4pLF7O
	 z/fciR8f6cor3G/5sOipx6LvEU+bJBu9Q5WaH7a89Uo2ce8o/FqxVwYwq31bbOK37F
	 YSZWYHp/6HrYwyWlvoobTaNs+LMCJ6t++LBQZ0mWXhvFoMkmWrhfGIHgKvkD7K+I+x
	 MwCYMx+Xr4UazYqNBndA4eQX/kZ65LT3hovKFUGRl6S4HbY+BJ0OeWR1nZrxTvgcib
	 Uwxo/KSO+GynQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7DCFC9ED3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287729359.18510.172537741282482940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b762b61fb34366192e96fd087f0c10f7af83fa4bd8bc49e112c492b1d541be0
Date: Sat, 07 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772877293
