Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3847E23
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7139CC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663707653;
	bh=ICQ2sywDQERBjBcsr2oqki1U0fPMxdVDO8sveq75fRQ=;
	h=To:Subject:From:Date:From;
	b=o7ovzVGLTd+RTrxrsBq8LjEvXO4d85bVwieFWmzCpVk/2uoQkKqWgjIfkFMQU8fYY
	 1XFWlkfZ6pmvVL1MiPeHx0tkUM8QiiNYb0AuKX2ZPGf2qN5AGii2X7sb6K+CylEQR8
	 j7Ab5lwSwlVs7F1CsWO/F2xuZ9H6OyZxD6EiFc6vOpje9f3aNnlWXhYC4Zv2VgqZbl
	 0Edbf9PwiltiWbVBo57dmvqFACgrTly/6T532MvvhyVS3QlALSjogCdGvK77cttu3n
	 NLZBbHtz6cSsUnh/IvUJN7/psHFm9/LxdSXRuq56Rdy/1hbuSnpqUo2FimxZMDcHF6
	 NeczgQZ7vslGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524D2C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166370765332.29149.2782369267259447791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dea36d5ec6642844f42a8ff1a58630e39aeae5206068144b167800c9093c420
Date: Tue, 20 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663707653
