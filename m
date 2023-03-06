Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FE420F0
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 05:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD65FC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 05:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678082225;
	bh=Y6Y+XMjkV+lJGbaOSJkF3kQEyGwEJmKcWXOFujOoCLY=;
	h=To:Subject:From:Date:From;
	b=npkUBI9fTNGETJnVfb7CAHVmXp9U78NsmmULjxbKFpJqjaUV6yZJxIIWcDcR8f1YL
	 FPsixXTD5fQ52BqD6F5d7uv2qrOJ7IA/Duy1DahO+B8pydgT1IDBgw0qLb7k6ljfXw
	 X6dV5T3KLFUAmUHce5eQEepSom7RLpKLF8rlWc4v1pMU18XbjoTNrRi5utnrMHK371
	 j/QIxoIQ7egGEUYTjd20TvLHYvhd9uAmmwPkUTRSroBCiZKrunsLp9qLRRGJ3+JY/L
	 fLu6UFm/zJ1LWEb9EV08iJf1AeG9kcW4QVKUfzuD5JioEaUakVH+ftfsJfZM7IIrdf
	 BSylheBf2TeBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD594C61DA3
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 05:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167808222576.23330.3024071633910617455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d66b75332f545648e3611e69b4078f113a4b8b1bd4c1f7fbc882682927fa27
Date: Mon, 06 Mar 2023 05:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678082225
