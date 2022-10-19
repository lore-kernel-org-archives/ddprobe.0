Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4022F33
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CFB0C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666217453;
	bh=drXqFz15tVVJgBOi1bN57v8tzPTNUJ0A7sMMNyxYZbU=;
	h=To:Subject:From:Date:From;
	b=K/iprYqw2ye0g0fgWWf8n2JtaqGWKiRj1tLskIGkKeicQufYWMWzBc/Gw3lw1HYcq
	 QJMeaXLT0VbMcpAsIMHq1PT9PcPdwAXBsKG8xa2WWbLP2H/t3AgtWiCKfLSQgE6jEO
	 T8639P393wF0qXiKCGnpJ3V62g5D/vuAALLV6tNbrcUV5ZgUvaIPbSHHozGV5cfSjr
	 X5yWZyWf1TZ+kYVWPyhj/lk8m8QOBUeDVpot/pBFIcV3qVKFnq/LCuIjidX9ieYWi8
	 tUofukcUPLO7g2unHLWYGotun1YXVchFQM/p+7iqd85kCxHRpld8vzr0vhZva0QbNV
	 fWookxLG2GOGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55735C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166621745334.11552.8613266918939235573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6abe759a0d2a2f0a0db9a0f5f851ac0a5ba4de1aaf62afa263afe30c7a0b9302
Date: Wed, 19 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666217453
