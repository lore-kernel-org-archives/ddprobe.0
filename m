Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4381F7F1
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7146C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691716388;
	bh=VfZsB7lFSXT2ppWT2AguB7sk4woJkr39RV46k9VZkwo=;
	h=To:Subject:From:Date:From;
	b=S/K81uPc08+WMOiLMVhIiPwiIhEyYQKWvSNHx6M6OaU4GHvM/KYgxm50HLDv35cuj
	 vOA2E1GSx4ytlUQzPyK4tIhZraEssmgNOIYwkYntvuOgcu60eCU1u1xNpL6HF9aFi5
	 TK4gqe9pGv0vl2ieBr46yF06bVZiMW8S0JzuGam1es8fN83uQXuV4ULmGVDvHpwuno
	 VnEWyLbpmyFVYr/BmXL5SOuoij1jaWjFrYM2HlyHScvVPpczKxoU+vW82Y6oMGziN9
	 k9jVwpFDsgbhC7C1VneB6tXcAYEPMC+2p7P+knR4Dg5ewmXZlPi6pi7pzpt2mGO5da
	 oCLNAkeqMUYdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0B2C001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169171638870.18271.6671124620992989313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125d66c1d63eade0e3b944250766dff6334a2e513606d1b16e9745f8c3fbf387
Date: Fri, 11 Aug 2023 01:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691716388
