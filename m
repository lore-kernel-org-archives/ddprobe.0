Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF8F20F6
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 19:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D87C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 19:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684612745;
	bh=RlDXKg/DybVgR44mXyOtbHl5hSlJPWrB2aVonNjO6RM=;
	h=To:Subject:From:Date:From;
	b=ZWAMN7aAB+NUDvG0azCPu235u+ddW1OVyppnp6dcFyay9kUqak/dGvuJXhWNormhJ
	 6Q5VkiymoqeNUNj9nrgSd6cAf5Y6Q7mFP+onDXJ3RlK/Pb5xWUzvhAXHPl+llXrCkw
	 HkGX0DTFsB9mXWDAJO7ZlawmZ8tcTmki1lRxpt1xk/XjW5qAdU11LMryFEXgMMoNtC
	 8v2wuP5U1TYsYqtt9TcGAD9bXj4xw3EMtVNiFi4ZBaAH/xSukJgFPQfAZD4z3WrqDm
	 M9TV97SzlM0gk/YFEgkHxbakuKWhaoAuEHnYi53H7LO4rW7Uq1m7HiMVgwi3NE/WCu
	 c9fcBVQ0si8ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA35FC7EE23
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 19:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168461274575.12939.3048798742088094140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2b715a0eb871feb05027ba604516d7af905d6d1fd9408c0b0a27d467c96f42
Date: Sat, 20 May 2023 19:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684612745
