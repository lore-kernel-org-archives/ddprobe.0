Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1286D7082D
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760867994; cv=none; b=uHwlfuJa4GoyVGOQ/vx7QCEv9/WAA1g1SLWaDO0qMi11mRyBtbs5cFsFYSsVKwNEd7cmCf0xHZYSiLxRlDmFQJyq+EjQTIQ1Nv9wiseZ2Hl3WO/cF2S/eqh3kS5lpsIzOHoG/N/a2SVdKJzRVk2lm3BXnamXscjb5Uw3j1h8WP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760867994; c=relaxed/simple;
	bh=oM6KcN6+bujDEvsYXWelkCFvwMXFl4VxRlC7A4y5d+w=;
	h=To:Subject:From:Message-Id:Date; b=h/xz/386pBP1sOASV4ZcN6px6Lqyv42Pj8NkYvR6lG/DXnA/KGQig2ociEYlMw+SwL858f3a/wumDIQ+DdxmmeMB3/1pD18uUxnI1KoNM+CUKsxjiLBKFx1/5y5VzQfZKFl/1D5ZnyduMMttgl/WRSiqogtG/e5ey/TT18t1y/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bP7Um5Gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bP7Um5Gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4858C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760867993;
	bh=oM6KcN6+bujDEvsYXWelkCFvwMXFl4VxRlC7A4y5d+w=;
	h=To:Subject:From:Date:From;
	b=bP7Um5GsIpGbyEqcYE0pnu0drZG9xxM5Dem7TyrZ0tsajUZzV0u4xNvla/FkRThQG
	 7iUoN9pHKNTFNs0NUjGGwwjRxSXYjPZatFsK66lJfzrDd4XU1mco1fK9cJAHBkQBif
	 8NkBk3mKcswkF4MxmGJMCzQI6gBWInX8mpQaha4KuTY5Bz0Kk9myDjUrxUbm2Yfczw
	 wg3znuY2aCSdrvUEca+2ARMBhAbaztCQnLZxY88jTZf2VQ73qO3N1125Jd/8Lr2xhO
	 FiqjHHKI3e8mdcZDwc9h7FTf0yatY0MyapJWYNKczzePV09031NWR79CtWqTYpz/cR
	 Z6AXAx2DHQGIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9400BCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086799357.28026.10260836757128596140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d324ab798dd794bfccddaa541d3508efabf8aa0ad0894f51a5e9bd01f3196f19
Date: Sun, 19 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760867993
