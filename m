Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385AA8634A
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747666194; cv=none; b=FnOjFzqtvVg1o8rFXxA7HMN1GNJjr1i0SosyzwtTr2baJtcFIl4W1bHngbhDm0xq3aTHQ/pBaBJqIP2QPpzet4nqh7nF7QKj+uaH5OBpMCjM3Echp4Wf5xOvN3XqT+AQQgsdxy5yDUnUnvSsz0YLyGUlZg2R9MQgSKbbKVtlgc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747666194; c=relaxed/simple;
	bh=MYKXuBkrpi9Gf2xvpsywGKqykbmtLlOfEhy4odThDH4=;
	h=To:Subject:From:Message-Id:Date; b=FW5Qei7Eg2PKLA6YqKjaWo1aQdpfSw2OZWgNs7NGJcYnpIB/tyQyn1grUQWBckEdW4TrF4mzYvJ98a+yGwXrsA7VHQO5k8MoC4V+YV/aHlDtCr4hopLPeBFtsSrg1K7obQasD7tbKJVVjuzPWBJXRd6Wmp94qdNeiI5Rkw4PgUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+GzEy+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+GzEy+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F051C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747666193;
	bh=MYKXuBkrpi9Gf2xvpsywGKqykbmtLlOfEhy4odThDH4=;
	h=To:Subject:From:Date:From;
	b=U+GzEy+GAPDaEctCzmgohT/mnrdcgH5Flfdcj2deTgDRNbOM3YXU4/F0y4ehZoUr7
	 t/uABNIf/Lp12Ar4+XLi7lyQFiftsh07eruzpBzY3VXXcgCnCTZKkTrj4UaMaMU1/3
	 ZgYbmUc1DTwbLlJE4PZhvJSwL3bIDf3rSGKGhkEx7XpDsPaevkv+z8vzsw+1Y3S6Jn
	 fKhkKWWd4NI55uJ/2JgSI7cuxbAvxiSUP0ITvW2g7jTh1cDPaIvAX1n1KsMibjjQ9k
	 spIRcr/u+kyFAALr3L77/uoDTbQ0hLTjtDCdsCYDPq1RFJDvRTG7/9Q+8mLmkGBlp+
	 i+gpWoKqkLEFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90723C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766619358.10539.16841151961506287916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f211c983c601765ebb0afd45b16181986ec53a22d305056904b00257095be1
Date: Mon, 19 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747666193
