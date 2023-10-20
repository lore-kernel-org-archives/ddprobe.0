Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155C31CFA6
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSWgTjsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EC4EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697810896;
	bh=1rE44YGZqIdPNUYkqkyIE0vOQAaEAxGwt5UhrIaxFSY=;
	h=To:Subject:From:Date:From;
	b=bSWgTjslC8dInjqRwWkr+EWIRU1W2KXXHd/rqxKAEUB6uPhiu23B/I1fQUDggr5AO
	 SspCXHJ5eMKVx/DACEretaMsXyAw8KvrKCWGxkng9PpLbNsPPZmPKT3voogxdsmfMg
	 n0KF2/dgeB1LOMPMuwGgBs+luBXrOgqsKyaciPxjYK4yTCC3DneUMTx8dcJNEVJykb
	 s4IORfguScrtprJPN+ZEmGwIVZsIrORPRWrg/Sjg3Sd462KDZgYBdkoupgTTJ5FQnf
	 GNU5D1bqcc7dC4eQfDDN/riX8+RwsTM6VLSwPgDWolpZxsl5gE1jUIIh2AjntXU1cO
	 NmY962ayII56g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA5ACDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169781089643.11857.889808508922866617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d17a52f321c8acb91d75378d0f258c9511388ebbf8128488a9bfaadeaaa8c94
Date: Fri, 20 Oct 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697810896
