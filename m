Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A514168DD
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 19:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07B02C433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 19:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689708669;
	bh=T3m5RZMvNBLNoqSm/Fux0kT1nd6A+qqbsa8SXieP7vI=;
	h=To:Subject:From:Date:From;
	b=B8ip20JLzyMSslYwbU43KoYDt72uiZYZ50fVOzShS4yrQ1GZLQ0Ap3wyVzMPVU2+L
	 UGq79yc36rl60Bt86FZ06idE1nlf28PxjJw0JPeYclhrOMPVrs3vFl0H8ROR2ukmVh
	 5k38xoRvzPT3b2jcVldlJepd8bNU3b7UxpGM10jLiMhhjJEOyjeL0HdGL1GgW1os+D
	 cM1Z25X+9gfCcPiIWo9oVgt/B8eGCg7/y+Pm2B83vjiCKYh/FN8nOlRqxqoL2dbcnM
	 QLUYlZcInGp0f9m456nfjWj5vYU9eWwjXc1AVx0r5HkMxpnLkfs1NZtoifzHo176CV
	 R5r9VfNoE0Lyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFB95EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 19:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168970866889.4362.7412664728325123926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f992f7266fe1a7ae25c545f7e3d357551dbd5194b045ccf2208769ee5344ea
Date: Tue, 18 Jul 2023 19:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689708668
