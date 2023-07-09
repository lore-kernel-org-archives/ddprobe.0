Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708FF5C9B
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C9BC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688923628;
	bh=yIgKJ0nCkoQIxufd/P9iVB3qil0nUZsFUgSRweLVKwU=;
	h=To:Subject:From:Date:From;
	b=JGYzM4asaxQM79iJcgBKJCuyZlwHYeB5dum9MVABYceBqR4CqPgU7c3oHAvdLLH0Y
	 5ICrc4VQhhdd10dVHDIf4NbAz8TTgF2Tco4ZAu+UlUikbR/PTiXwLMaQ7VkzD+Ib93
	 PccIrZDML8hOqBYxy7p6XrpEv7wMSxTjWeIbIP3/6Ffsq5yzHRxLBFbZUAk8tAk9VS
	 /+Tk0ygFSspr0F7XK4b1770obONRvuVv74btkhi0TjzoRUXwpYskNi3OKsmMg3NVTz
	 UjllhrpiosE6qCNwVJ/023EPHc3t8/rGjEJs0+k951YCWX2kqIfkucAFS6hlGW6lHU
	 yglM7kT8OIfqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07AAEB64DD
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168892362871.17670.2892582260597906662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3a32d64b12ffda94fde1de7f9d974ee9df43340e9c739914c9b94a450d6af4
Date: Sun, 09 Jul 2023 17:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688923628
