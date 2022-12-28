Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D849AA47
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7A3C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672195287;
	bh=5FHiyfhpzTtly/2GMohPNxFbdnXp5nQcbgZbrRILCyU=;
	h=To:Subject:From:Date:From;
	b=kzoVeHhKmdmv5mLYV7+GlkAuBmzoKgNODoxIDRW8wSOKEmWmsvvqGbGvJBBO9uEMo
	 2PUzel8LYeTWXRpX6lL3RvnsBMgqcm7EqmHkMVUgO0wKuvzeyjHoDP2hNANLyvIZq8
	 HCC6S+ow+Z01zfRFroJJDBjQo9y8qCTT40uKweK2OHWpl6Bvvi6T/PNc0jbjnxq/8e
	 MFPgRVTB3i5NH2QiKa89Mda46N7EDm+3I2KWu2wKdWYsLopaD1QDvYPAOlKbyyb2HB
	 jMv1BkrRHuNOV9It2VU1DctTeMJtP3WOpDQP9FE9wUB+8CNZY9PPNm59HPAGnL/X9I
	 W/4yMcLuO4KPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E78C10F1B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167219528740.3080.1446945731578755726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9af0b8f4f6028e9f6b7a0a3a35a48a0281bb508343240aad84f6c2d5be5f5b
Date: Wed, 28 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672195287
