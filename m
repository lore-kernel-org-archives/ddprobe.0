Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316CFE4DB
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DCAC433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680824885;
	bh=6HLgGHXZrL3FWb7qY2YTVka6F5Fjxa8RC7H5TZt0U4E=;
	h=To:Subject:From:Date:From;
	b=a0kBRglfGIcl+84EgI67OvD8wBxWCedx7VMSTMkBbHxarR0p4F8R0ut7ZzWfsG79G
	 qj2Qhjogi48VpPbHKtgKumjm+l1mGY5RA7j0klldCJi06LNw7UosUNya36BJY6pXNt
	 Jw4ks2LjJCWsZrb3M6aUDgRgpqe/7aPl5snon6cGSQjutKoEAnQG7jFCrGdtEvlrC+
	 qQvLltvSyuVORYGXvhIvrOlKr8Yj4pSXxHvQYvXAd0TSO2JA2O1nyAh2txU0+F0SOI
	 8LU/PuCGFX8Pc79p9lI6QRAC9kk9auvlgvRFmJ/g9moFDY3y3j+FAXRAvpKdgQpOia
	 DdVsHc3jLZ8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBE5C76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168082488576.32113.13364178485974197844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0644ba0d0c72287a5424a0bdf95df8d09e4526e8237ad588ab672f44bdd1495d
Date: Thu, 06 Apr 2023 23:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680824885
