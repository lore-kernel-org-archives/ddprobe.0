Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4101CCB50
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733059553; cv=none; b=WUtWB/V/On2vzW9mn0RM97C6YQD811d7oWqQG9oO4SLAEJuzhNCL4I0Uxu+At0SaJk5nwlPd9UfSOk6S6zuOxexSkUZEH+5Mx2tSqv/Yd2wKyJ9y2I0RYGGiR9ApBdumYHdQZlYUDeBO5K1i1P14WinvgYsQPTfiuJktZ5JF6Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733059553; c=relaxed/simple;
	bh=0W7rZIahMOgVAPX0zh8EJAdHmNFDvUX1EGwLQA7ZEUw=;
	h=To:Subject:From:Message-Id:Date; b=By1F0/l5t32aHlOeGCBmvh/6ZhdqS4ReUw/6/qSxRHBGIMF7X/A49YUwYRnINyErn7sSrYdjhPoC6OvAX68D5KlDeJ2236tGbKKul+5GJa5luSVN3kvGuDvPjjFBpPk1KGvakYSCulwwJCd3p73wK83T85BxQwcDv51eQO3Fv3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRs+jK3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRs+jK3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0F8C4CEDA
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733059553;
	bh=0W7rZIahMOgVAPX0zh8EJAdHmNFDvUX1EGwLQA7ZEUw=;
	h=To:Subject:From:Date:From;
	b=oRs+jK3/Ovi4wypPRwOd7xhImfVSuzD4cw+YM7cdaZDRpwNXxaDKJWMTtr4N6ewx8
	 KQLk690JNIh6GikKXoiPJSZPE0ZwIN3jAHEOW3+UG4f8JLMgmi7Iih90kHn71cmiMr
	 LkYAxSI+nZtWee07EovvkUkboOR0ygnb/3JaQjPL8sxL10TBdkXjuTAYnXX3HovR1R
	 24gxjhsxXACCfSrQFpIcSL3fRDmWTpDZILqquJCLxwnoE1TMoWLRO6XMQFH0SnxgfO
	 iICSOzKlaOK/a+nYkgqdONakVyEVShPDnuErbmoNm+9qwn7nyTp+9l/r492xk1GGRu
	 gd9e3ALd1hz1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82C0D4976D
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173305955367.26691.11433111928249991630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d6ad5954ca65bf957fefd569485616f91e9835257916382dbf852a27e75151
Date: Sun, 01 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733059553
