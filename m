Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6C13FFE
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 13:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE21FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 13:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689167948;
	bh=NKzUaM7giFpMprtyOGqgSN7Wa+rlfMimr8rkOJ07o4s=;
	h=To:Subject:From:Date:From;
	b=m3OouYRj75ILLVS94FKxsfA2V9st+Ar6Y/yoJGdyjejgMOWCX+cT8PmsYFk/dicig
	 EqBcn9sjsFJ8Bf/3w6k3uVApbnVP8rVFaiGaC1ZF65aVG3r0KE+PruFYlTMIZIUU7i
	 7FpJ5wqIG3I7XwkN7KCA3ChdXUgNmIx+2ej54azelPHwBMsYfjkgrxMpI4EswcFjLQ
	 3gx1DTaWu7JEUhbEK38qK7+RFkfLg0QXuF+n0R/OsUmg6Pw+DHlEtjcTi9hewUbpIY
	 /sg3kFoTFS6P5+kIsjVsg2Km2oEldb2k7EHZIp85sEa0ExoAelHJeOMBzUZp8eAhzx
	 IGjHKp5UYTLGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA76AEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 13:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168916794875.11940.8592277356888885111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47469db3fe2510c0309c47e379c2887842b0ed7826ac2cc865400d92504e48b0
Date: Wed, 12 Jul 2023 13:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689167948
