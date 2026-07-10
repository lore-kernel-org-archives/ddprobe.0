Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2A178F26
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783691914; cv=none; b=VnTlasbVWH39bedfvUjswD5RZk4Guar1JhPbsdLVLlm7JPHZVNkj/WDtQf6tE7/8+jZDgVNYVwJ0c9KI43KCCJ8xRwgohn664pTszmMFh9REqWgQMY8ooTuASgQ3ch82vJzYj2zeDvGNWSOEA5pm4Bv6MRGZikK/HPoliFhnjWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783691914; c=relaxed/simple;
	bh=O4rhBY6zCTqUGEbD+bnFBkZ3tMVGmp3ZaW8K1p/2JRs=;
	h=To:Subject:From:Message-Id:Date; b=Hw37FIWqUDz56VVv552oAT9S1BGT2pM8bT7LFfwvgzpnIFmb6FUkP7sHb3ndAdKcLQy9ieHVAe+/7xOpfwor0RHRvbDiw/dO7WEdeZy5XeN35SsnNtsqz7hJ3q1cdIWPTrxUSSGBtTE+UhEX5YqVkJrXjkJsSL9dpS1DBoWTq5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vfltx9B+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vfltx9B+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA714C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783691913;
	bh=O4rhBY6zCTqUGEbD+bnFBkZ3tMVGmp3ZaW8K1p/2JRs=;
	h=To:Subject:From:Date:From;
	b=Vfltx9B+qqXccay26Ix0pbODhd8TDfoR296kYfKjRzdDOSsGx6WfcszEOxvozWs49
	 62vHJZuuFgVOckNDGKvsHbrhTU0yn1QI7eRp+bO8eBCAhRWwx7tPenPT4nOMBF32nQ
	 EFm+bnmTSUVvUPyU3yM8VVGIJgVBJWt8Zj20FvMpDDx79LcHCe46r64M4ZFTKUHHno
	 8aAXSf8rV+ZThOa8WSfdCNo0pR0mpg4QvbWb6YExkq6FIn0qzgVdfU4nPzUy4vxWFl
	 Z3uA+cFZh9xpRUF8v2l+cli7NZEwbsF0FXj121lvMFVXdf1NOXkiVOwjIVP8fQy8Ys
	 2MPMTrT23Jqdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A928DC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369191368.19503.15400433214019242321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba36c6ce89f70d605afa434a578334625e948e4ce3591091a8f21178d524d2e
Date: Fri, 10 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783691913
