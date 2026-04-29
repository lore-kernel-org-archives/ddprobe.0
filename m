Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3E84C81
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777423654; cv=none; b=r9GefTDQ7cJPPTWRnWmwdHMtnS7cUONHxVdxPCcX11l/EDyBoFMdW1ui/zRYn9ElPiN2kH3fvuZbmrHhtDvf9Fp3yyDDpsqPvYzcYrUa0uVl1PFGSWIeITqzAxOyGPO8/bWmOx23fiYph9+nOGCUpxPnFNKCTq8lDwqninlzWXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777423654; c=relaxed/simple;
	bh=sUxuu6sNddCn47vgJLvFPGdxHbGt3WuGuC7+Rz6JEEY=;
	h=To:Subject:From:Message-Id:Date; b=HAr29Yrju5o7RgorFOr/KxpAhZAQ0+zJHICCze6fAg2rMfOY1GfJ9ch54lZ+K+87tb7j86pSm+sna0NVnP+nIjdAQ6NlYE3Og3TN7/5+qBgwpQ74FYVDnMGsF9do6A3ypKIJ0pwvJ9AP2lN08FSnnEXQzPI0/XP2ohGjv9jBe4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vo8dVGZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vo8dVGZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4114C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777423653;
	bh=sUxuu6sNddCn47vgJLvFPGdxHbGt3WuGuC7+Rz6JEEY=;
	h=To:Subject:From:Date:From;
	b=Vo8dVGZWFI9ycL39dhkuYP67KFKJ1Al/ngiHshnIVyAP8LVs+IzH92OY8pKqskGt5
	 QtnV8/PXuEDKoFqWLhRXiUEC3EcSb6MjmDuIak2XBuWh/6mqX1tjD8lHXEo7bZeQMi
	 4NdbHrSx1z9gjpy0WDMm6hieJHXtLmtYYRpPWdZ84gUF5boez7TC6Z1bJS7YJiLZ01
	 L+QnVavGTi9Hn9giZ9pQwYxRPdXAmx2e9X9GraomxhZ9tEoG9dZafOfKA3WtXca/1K
	 iRII/d/j/XB2wo8k5ekl5TWGsqUvq18hZ6VWkEvzJ0s0OxQ2Pmc0JmA9TE4GkruB3s
	 Hj/wL+yiEy33Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1955FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742365369.23300.14920876832182083367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ebe9df068305cba9d631c773ca820c86ad510054503a70da318a30ab6fed06
Date: Wed, 29 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777423653
