Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01E8EB06
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7747CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669438854;
	bh=tr/7chUezZNWbDZWwoMGEefYxqjgsECyXsRviSfipzM=;
	h=To:Subject:From:Date:From;
	b=jBqzbJg93FK051cBNAuJzVFUHUg/FZnTMsaUznQostw64PB6jUp5NnVpo+182BEAM
	 fzO4OfM9SugTt8Cq+ZccA9KwNyEb2eEiPDDusCm0Ux5ntuf/Az+BZ32z5+ILwIocde
	 rjIxpK/oyDeq9pacY+weNyKkE3IGKtSrJPgafv4wZCaj4qPv32Ii5ciQx3bfbLhUY8
	 XRCHA9IPh0T/bG9q9eQ2t0o7SrzPMLYL7eku+kcc5+zV1pGWDlBtMNCZubUfmp5Pdg
	 og7CCtzRwVUFwUjc5o8Po6AY07Gr0us/ji7rwAvSFo0lx/unW10+E1zEed4cn34caN
	 5DGWBeJ3RE5dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 598C0C4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166943885435.29909.4122004672660476246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a7b45dd08ceaf6adba49b4b8e8f63795ff9fe51f1ddeaa0a92e812672dc9f6
Date: Sat, 26 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669438854
