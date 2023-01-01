Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CCF2F2C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 882A4C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672587087;
	bh=dJIQAUWQ3xDXXA1k1bUCXcte3yjfKQeT71wffLJ/NK8=;
	h=To:Subject:From:Date:From;
	b=Mw8pC1JPnDbAgHFqBmzvyFffKJ5qmr6xIfW04+VGIpUspobFNvcgZON+eTMLV1jko
	 7cvb0p5U82vy479DbdwS2qgxL5XHr448I2OngCfnrcL5smliP3CjqEtm6ZPhGhvQg3
	 i/j8ztQlf4aRwoKqhYFaG3+HFEFcKIpiQtdAqDKWk1m9PVmhQjfB4Y9ja4D/ot4+aU
	 bKSNUq7MpLmnO/KKBpS26l2TIKcHsVzpNSbx+LSVUw3zfu/dEYx4YmsBlhOv9qyNvD
	 FE2rtUQChNz4NpmHXhaacGS1g6TmMKmh1Ps4RAh0LMnjEuZ2R8hs2q0NQVJCIbkfXG
	 Uri4kUxoR2mtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A17AC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167258708739.25133.13439498489627409574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97482eeb74cb637b5ba5676a702f9345586e14da80eda16d3b7d9a71329ec520
Date: Sun, 01 Jan 2023 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672587087
