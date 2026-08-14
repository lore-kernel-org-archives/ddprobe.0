Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39651352F86
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786690234; cv=none; b=eYrAhp5IlXACKp4GlWojoDMlpSif5ZrBuaail7DeHuTsy21mbRvQVW+ZP9NzUo7RAt+a3M85dDtw366ol6Zx1kEJiSZlmzO3lAjwnX71WH9p+klDe5Gp1YtDnGyhm/laHJBKTeWg5Jvtf+HGgx4di62pBoGbrHgEIedI4bRAr74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786690234; c=relaxed/simple;
	bh=itmiXJd4Ktue7kkq9wzp+fhaVXtRHDAOQ4UBYz5Okgg=;
	h=To:Subject:From:Message-Id:Date; b=Jw7FKFPtxjWHySvXIU5kYFTWWNblUUO/LV+vBn+zJkpY5PFpSZKq1IEuf0irO45o3grLKPcnLpA/P/bNfvEwW779+m/1p31lCzvzpdUYgMVmAy2ZANNn0S1EOc6xHE3mnqx53JgJZquhGEEueY+YRQk5PEy7WelCqH3hocALwYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2Hgqk5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2Hgqk5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94B0C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786690233;
	bh=itmiXJd4Ktue7kkq9wzp+fhaVXtRHDAOQ4UBYz5Okgg=;
	h=To:Subject:From:Date:From;
	b=W2Hgqk5Cx7v02bEUCUYiOOqWN0eokDJqJacov7RWkFeY13h5MpXIslhXBwaZGyv5y
	 CTvLTFYUlb9NoWCWPOJThpaH4YRCUwgRo0CRaMir5L4muv4V0KiuARBAh8k7nf+djq
	 IVN6C6S9NhcowCE2nVTQz1I1aKF2b+1vzOaFxSQ7BNDHRvKyDrkxAtIECRBG4MO0i/
	 xInowOx8T4NxQmpgxXGhqlaSf3U1n5sAzHBEu0/1REsZ9clcPwaMPg6IzcZ90nYnrY
	 gAjCt2xaFBGWURVoSNGw5u7o1qqwO3XKMQ9dZnI+VA+ARt+QqqzxRWVFt+J8hDI0i2
	 lk/hroccZJQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A811EC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669023368.20379.10025891555713687873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7472878e3dc4e08d82c182469db2e8838369d692595fe027eb95c116477bdc
Date: Fri, 14 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786690233
