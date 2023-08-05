Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6236E10F2
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 16:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A2AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 16:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691254388;
	bh=U58TiaFErACzXaff8AnO4871MTg3iGFX4lU+eyD7CjE=;
	h=To:Subject:From:Date:From;
	b=A56IBixl0re1elkEwKUY5G7SG83/vUy0i+2Hs+oGIOCdddeIlHLOOmulj0NpKbidP
	 Fook6IHOWDjNuQRlcVweo6OPVZ+dZNM0BhX2sfrL3sBJX6g8+6fxwrZBHNzWG4QzkV
	 6PgZu6T8L5CzHKl4+yqUOMUCJI/kYejyNpRQM1864V49mJB81ZbfVf1r03Iivrtpab
	 43icEcSB8wba/pjgnEaYaT20PNG11m5tF5sr+JWdT71G7cm5KXzwNC4I2ADjhQRTJq
	 irhyyS6EJwxTCt4OsrFvNo+6P+oGpPWMPrWcZibiRmN8H+YpBF5fh32SA/eiaEBJUG
	 WWcGH9E4L1Mmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5ED8C0015E
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 16:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169125438866.31902.7819128606907118641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a3d349db59ca6e6dd24fd03fa6309bd728ebc26524e75622ceeab3ca24d044
Date: Sat, 05 Aug 2023 16:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691254388
