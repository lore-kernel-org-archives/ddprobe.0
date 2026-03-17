Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D1B37F8A5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773771894; cv=none; b=OmwKucIg/n4bGvysAIafNPVDudHdX24T1gSbPoYMYrsZE8C06BQAD4weaeecUAcP8YD/ImGY/X7LtvS0w1jt47C7lHLKKPzDV7GpSHiKBeF0aSaXzPrMT04BgvCYP3lacFGbRjbORHIdmixd1QrhOxk7lHbaGAt4KGrQD+2RxRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773771894; c=relaxed/simple;
	bh=EiXIk0Dh1AdrMTgjCwNFXCuuAErQpteYr48VznYXEng=;
	h=To:Subject:From:Message-Id:Date; b=EDJDtNpY4+o9pgeK6T1lhcMAAe+kj51fMgBQMV1YHr9SMTtFZg1bVrZ9QQCJLsWV1awfJHPMatWPKz+Cy/lH65j2Uku1fhKcPFnwdEfgY/FO2Nx0rq23lK8t3CCyq00HizdCPigivHrPGVql9BcicB+mRUXcVKBT9C5FVF2rDoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXS+bmpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXS+bmpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1882C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773771893;
	bh=EiXIk0Dh1AdrMTgjCwNFXCuuAErQpteYr48VznYXEng=;
	h=To:Subject:From:Date:From;
	b=QXS+bmpqHxe/DYXmtMX08i7s4U/yXcPTdhIAzItskFG1eqJwerQd9dhOSUy5r6/WV
	 r/FhBvjJY4TiNys7KL1DLyV3GZ9S0uU+ysp5r162W/MSjLUiQAyLC9UtlACFAzBvZS
	 Z79qMiuhq3rjhHVcrfFGzFlaL/15badsc/ShZEFe0/J91ecR2F/54JgGty/vryGXGK
	 wxYmfXkA8kQBpccJBAlYNTzuqNP/cZ1SMzq4pIa62Lm8kAKgteU/709LT+N+kTai9y
	 vrrfmvhH0uHhPNZZU2EOt7nODkUfVZCDsp4UEc+iJ0AjsAN+O3tsqCEpykS+QIDHxI
	 KbTKLKAk4754Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF20FED9F6
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377189357.26868.11038303999495290793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e804fd93309b3f0753ef8b9fc79f8cbb82b350d2936f9f4f5cbcb747baa22b72
Date: Tue, 17 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773771893
