Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF78F4C81
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8925BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670800887;
	bh=tHW4UQPmYaviDAnrAotorWdtb6pd5ObmLWi+RPO0lX8=;
	h=To:Subject:From:Date:From;
	b=BXiweckIpCElBoP60p7t0DInoxkPS0WDV0OTLZAlim7p1Wa+XjRBh8M4b7c8Ak+rr
	 seYPdx32+wZrIKn5h7P9dp7rnhevU8jbzoY68T7Yi62wZebvBphEvefwBg7Vy/hmsH
	 VoHoIM+Z4sFIteh9091QEmRRpDS8GZZxSKs19/3/Lavi1chjGZuQnL2s5L+WGzQdFK
	 pxdQavDwDyIVYD+MBaUwcYuyAshOikNdaM62nNpVkHd1afYSJbHvsPCo7qco0k2K7i
	 gQoRhjynA1syyvZJ+DcCDY4i7HtsXD/ZhSLdUBHu5O1mEuyDlEIRsTL4yvaq2V8+bJ
	 0PdXxv7Bz4Eiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D8B6C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080088741.25645.8047397299336281803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f226490894038304cc3a5091f626d3bc8032a4362eaba34b730be807c29df819
Date: Sun, 11 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670800887
