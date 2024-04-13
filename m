Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351F9320E
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712966963; cv=none; b=e1gucUoqkKDuw9T+gPZlQJcaHACedtRKnRKr05M0uwYlWYQ7OlgsGZ1rtAGqPeCrLD5Adk6c8J3zQM/W0BcJzTEZ7V6BmhdkUW1wrLwecGHN2v0qVAMy+/YTSURMYA4Sx9EujA3iRCCzMdJKTplFxGUVJDxHs29AnsX5FFixiMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712966963; c=relaxed/simple;
	bh=UugS2S8xSBd0+fXE6Vkxy+wh4hOm41c79p0bi5kezHo=;
	h=To:Subject:From:Message-Id:Date; b=hUDy0O3XgK9I2NkS+SiM+EllEM9s0zCDf3x5no8yuz6WMb7CeGSoqmRULILhrSm4ftT9SqU4a7G3r0r9xZkRVLDO46UnYzh5CkG9LN52VpHA7gWUyT42tCwQJnQAQGqR1Ls3PMVDKoHhmoAiUFFEu/n2+KFVFhqLO+gw4AsK6Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oR4x+4V9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oR4x+4V9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36B8C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712966962;
	bh=UugS2S8xSBd0+fXE6Vkxy+wh4hOm41c79p0bi5kezHo=;
	h=To:Subject:From:Date:From;
	b=oR4x+4V91NxxNSCNjlYjDzBIkNeRzZkGSIWROijR2nRieguviPugI/ZQ1z+U/Xe3Q
	 VaRxr+5SvhMyoekDjBcozOafL/sDHjLDFjqMZYw6/P2tNKfld0y6R41uds29WcRuAr
	 mhUL52p9LmPLDnLg+6DS0f4cpgs9AasCVNvCMFgP0mGtwRfxVmE6dOag7BY/u0qTAL
	 rkY2esNop/dTwOQ7o4O/tV+64JhARB3P34HxV9BtkNjfrG9G59ZpVGcNPeOKxtcTnn
	 IAcsY3C0VTg0C0++JiKe37qOxdXyx/96yNDPbC47GFUasIePbVjiv7N8oVupYLGto+
	 +cMxV6eb9AHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB63C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171296696276.13774.18175532912335086691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63772fe4abe477ca0898cae37b07cd2acb010eb8c5273e504223e61930c94ee
Date: Sat, 13 Apr 2024 00:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712966962
