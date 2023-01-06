Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E275A1863
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85C50C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673043687;
	bh=/wnq8xhcV8jRlFf9cFz6mDRe/AYTpeWvLIBP6IhZnsk=;
	h=To:Subject:From:Date:From;
	b=lk/4aPLMG2S5P95IZ3DaQtPYy4Cyiebs6FZwOMSdD6Vd9UtOeu+u8oBiTY3cojvqo
	 LvPTNsDrFM7oDebY/n6XK18eqG4srkqZz5O5XGpaxZK4yriIeYb4flAdu5uQKiiB7u
	 V7WYpiugeucvZCik3p9cZnnOLLmhvfpWxM+eGLpy0lG8zDlF+vuOcRyvGuAW5zPU27
	 P6W8g1aCVo20T5FC5wW4GD5ZhOVfusknY8HCvyaSmhQf/ZQR22TvuFbdIHSiMdqFST
	 yc5C0J4YmEl/LoIbxUSnn81k9iuRTsA8fC2kHqrpjGMnN3kbyEnNKurgA6Ijyqd2OX
	 MCbHGYHTBgNAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E3AAC61DB3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167304368743.17131.3886227259589549677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f09e7d6bb64cdd2ef223248f03becd961b409cecf364702350c551e4a0314d
Date: Fri, 06 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673043687
