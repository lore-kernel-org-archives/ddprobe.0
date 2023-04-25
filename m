Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8257B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 10:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89D2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 10:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682418905;
	bh=dBy27Wfm6s+oRFHaVSwMFhGRxCdsr8Vf1pYDGNaLUwo=;
	h=To:Subject:From:Date:From;
	b=W5+2OoT318zgUFgwFTeQ26Q0yKmltIvRBKkAlkNDsuJVXWCk+FEFQ6aouJaHP/pNJ
	 e6kprId2pkyy9uJ81qeINIxzFT1imcIEz45A/Mumtm2T7NY/RQEOuOFHpKJXLAhGRc
	 4XP1xq6Gb+JuCYLt8U6rGhbYFAI3qHnCJLQ/IqBvsCNUuRcnSEa4Je7f1ODMh6csqI
	 kjZhi1eGldI0xU81eFqOUDp1czba/cNE8wDQ1T5KPLQmDuFm1IFe72ZEIrDd85hu/D
	 FyrvPfr9CfbFxJpdO+dC2NekUtceGg+6Gz6O40ftqNMZzIZcfrTlMGXQD4gcxpQ9+g
	 ef8jv7z3twGrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD4CC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 10:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168241890575.11412.11511042184279361191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452af7eb5e0fd45b94e1e6da435e02d14bbf0b28a7a3ea846e56d9a7658040ba
Date: Tue, 25 Apr 2023 10:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682418905
