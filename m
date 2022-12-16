Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1487371
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C63C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671165687;
	bh=WH1HfjTZaNcuq3ETGvPWsOcUWoFwYThT2sZU60xwY3g=;
	h=To:Subject:From:Date:From;
	b=jQKYZCOCK4XqN58CR3ylx3MUTtt32L9/dEYVpK28ybqm2faoujju0JgNDmdbloBPs
	 ntbjowwrjaRWUqwN4PbZslZ/R68O4wD/I4dv3Jrm50n0Ukjq+NiQ6JfkBrPWN9UhDV
	 noz2uCD/zx6Ym5sSNYEiffr+bmfCwazXVaMYufsZnfuitedxNFX3SF/upjIvlbEwO9
	 ueABhosx/CKZPAD2xKOCKl6v1SsWOHlDjPv4BmTkyFabi01CHdRJwEl3CX6rW4ZoqO
	 225npaKiV2h4Knoh5CEWdqgECM1Rus97EvFtwTt7Y6UWoeFxLY64nDtZ2+IwkW/K5Y
	 zPDkDE0ZDnrNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C34C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116568739.25702.16836638725557897709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63981ef4e88ec195be5232a8b61eed91566e23fc5a22bb22475597e903bb5580
Date: Fri, 16 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671165687
