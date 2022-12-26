Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9088624
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E9EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672089087;
	bh=Q0IPTdESiFoHK+EpzqBQ4cF6SSkJb3CAuUthvj4x+DY=;
	h=To:Subject:From:Date:From;
	b=OhX1T1MP2/upgvldeH0JVqBC+EX0JXSXgNyrnRWUelrPWaOiSvK7pP/PF/cZxeqIS
	 nztw/GukIDRTODfJjNWAUk+nRSkFKk7a1dEPCa7HoKkPz/fc7Uj+dyDOac9d+Uencx
	 V+f7H5YXhxI+QBRU7miEsUUnJ+CQjU6mSyHS98+zyL7RzPj8TjHUPSTLevLdIFYUlC
	 jvDfxpteDKtNnJ4NIbyVemqmQNrWO6MvTk98JO4X9OpNDD9d3OJ3ggbL75L+Dp/fDP
	 B/ZavInloJhFVklaoSprjWKFiL/sOIlQVN6akYLujcvP8//7Lcui2T9JtA67PerU0j
	 T8DU9FvvIrbog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647E9C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167208908740.16431.8481625429040802723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6ffa68598013eb2558b9833f11ea02e2b31e9c762c31ae22ba7cd8dbf93ec4
Date: Mon, 26 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672089087
