Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A977464
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD77CC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687774388;
	bh=LDwwERhinSm+s4J3JS2llo34i6c0XqtDb3/sC6cpIks=;
	h=To:Subject:From:Date:From;
	b=CgsDSigdYkN9Lpi/hPwm7Rg8TZak4c6S0dR9szeyEA0rvxap0IeMFYHZdHIxKvrS6
	 iqHO0A40KWuREHKctno5G+Dzc3sNDZnSTaZzE2+Z6yBHimMDv3D1pJWUPA9L3B8ncV
	 aIj1Sw56nW9Rr3/uBvn7tg65JLoo5m+VxHdeaaNiM7g9GFasnb8h1moSeo1pY+iww9
	 5uyksjH10NZ70Th+nk73zA46zAUcMAd+tstXgC5Ac025/HilXFEXsa6nCDAHSqOzAe
	 /pnuQeNlQEz2eF7DrQMylNij5uRHM3xW0iopOA2AMTlDHd9oZGvTvKU9fkwI1unxUY
	 LfkvSIU6RCgwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39C3EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168777438872.11983.14877716576165236355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7afc0bd01723f05410d0a10658bc24c1352ea0aa8c10f8673dbd4dc0c8138d8d
Date: Mon, 26 Jun 2023 10:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687774388
