Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A828469
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 20:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2AAC433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 20:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694376248;
	bh=ZOFiShvKEE+Lx2L0T4h8axq356QUq4jgdfiMlceX/Pk=;
	h=To:Subject:From:Date:From;
	b=auafTyExxxCipzM5vWVg9ErR1RVwYAtyZrZoxa11plRt4/oCahKk5dMxkTqWjHO+f
	 hiOv0sf0YbzEaT1V8hfz+A9CibWIpV8NbaoCnh7b76g7j49SXqSimNbihmezyvoI/O
	 0SY+HcGtq4J53zcXegxdw3KhM1+6yVNQwgFvlPvOK7SCez75tk1jjn2GlCkXHNy4fN
	 R+c09zX2BFsAtJcTRrXSqsvW3PP/bR5UGkqPss4Rt+SUij4BY42ZQ4KrgiZXYzYYL5
	 MxP02/NBPLAK1qW18MnVj9dG+vXYGwkY3H/Q1k67DvPt7CDMlIY7uqhEe9tyBvY94h
	 cWKm0ymLsT4hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBE5C71153
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 20:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169437624872.16940.15081088212612106747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588d638c643227a523893f3b4c84e3c990836591c128531f086942904eaf457b
Date: Sun, 10 Sep 2023 20:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694376248
