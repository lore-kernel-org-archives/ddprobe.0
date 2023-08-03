Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2B89440
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 08:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3B6C433C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 08:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691049728;
	bh=yT6ZuouMfLJ70BJxnVbxv8U8WRTW54YWVlw0Q7RMGZI=;
	h=To:Subject:From:Date:From;
	b=VpGjF+0JjFICm8Y7G5CDkhn6gXGiCUSb/MQ9JqVcODIHkWvnofWTkqTOGqWsB7zBg
	 hH2GgD9jwmAUlcymc1wML5AWWCYHZb4T1Aie0dr5HYcyGkASS6bQu00/zK/GWmctyO
	 alwBb/c3KW86n0gijlxojByEB9ae+qBBeSWbYnDasJB11D+1HCFmioaVQZSoIWZ2Tf
	 h/47C0bj6B1r/z3GtE7+gZDSX2if/ccp9u9CxQG8YczXVjsqWdI3WnYlaQmUE6lCVa
	 o7r3tbBURki5eQJBC9Z0Fe/gNcmsV0tOTUXTLLT4VfkqgVXriBMGCJJtfiJrAURpqD
	 4lY1HlOz93V5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE61C001DF
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 08:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169104972870.17123.4043795862558854117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a62544d8d898ad7db414bc5015bf19a722f686c7268b177e8b6bb4d200cf4a
Date: Thu, 03 Aug 2023 08:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691049728
