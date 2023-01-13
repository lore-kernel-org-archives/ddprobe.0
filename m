Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41F33210
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF20C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673609487;
	bh=rSJi9deDZVl5r/ZmbEouQqNI8q3gDvLaDaD4Q/TlAis=;
	h=To:Subject:From:Date:From;
	b=t7fMODnXtR7FM61OmVGiP8+gm3t5iPxjdEyNqtDNzv6btH13WtqyDVb1nVzuCagLH
	 PINHMq6UCY/QVOPc8phHQzlGuup3VeYPe/ZQ1D8vGwVPHB94rgHcYRQTsTeQ45Tox5
	 AT/MV+7jaWMQwrHC5+bD47T3CA1C+IBLmQLFYqq/hpPTLfiLJeUKy1MPmQCasGtwnB
	 A2p2xuTti8qNhUoRuv/U3ioCuj6SZQcUSySk+DuAu76mPoGBqd7RE2D5hc39qS6vVB
	 M4dJINLsAuOf0uj+asslnP2X04sZ7s3Oif75xHrxMCU/OwF/8cy5fg+x/WTE0sKdxU
	 szBINb3Qkv+BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607AAC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360948738.23806.12995905134450490213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5f33711b26cea55f09367b27eff9f82d201b267c151cc624cce2609c3e9631
Date: Fri, 13 Jan 2023 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673609487
