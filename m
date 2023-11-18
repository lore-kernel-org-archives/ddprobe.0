Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093D81E539
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iw2f3GeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9AFC433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700351896;
	bh=RLmmLZCpkuWhUcJm/QUePNk1NRoe0StjvIUBBwim63Q=;
	h=To:Subject:From:Date:From;
	b=iw2f3GeXrBYtmD3p/iuq4k7jVKfzOUdIlbtysR32tOsqW47lG28yDrl8Pt+JIdqOX
	 Is9jXu/0lhqrxEJDNSd7mXgelR25/9wO65EXhGdlfrnKs9opmLH91vLv76U8ialo/k
	 +U4ACfNVHroIz+Z2qac+xJN04SDTs/sTx1UNN8H9KtkZ+qZy9xIfRvN1Pa6n63CZeQ
	 O51r/GLxQ8E+M8Bk/q6mCYJHZ+dzzDcV8SjUuGfmez+joB8EAkAHXNEEPkipS1dtop
	 QeeZ5MbYxq8RsmklxsU3ogaoZL9hr5vfMAZcduXKlVehvUulOjfb9nh6Oj2QtxF7Hl
	 IqhULeOxGDTVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646CAC2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170035189637.32056.12465871515999143914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a5d0f97d2348a30e56e815ea016e720fdaed999744de3f5f035e35c2dfed8c
Date: Sat, 18 Nov 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700351896
