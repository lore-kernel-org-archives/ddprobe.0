Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A5E3D63
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E4AEC433D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663936853;
	bh=KfDs8zEczN2bPu2DPTlsXYmKOK4NxCUbB4Aej7nlPOw=;
	h=To:Subject:From:Date:From;
	b=K76XZr+zb/VCFf3Qs7hMq/OG6O6SuD0sodCAPZ2mX4iQ7wbFW0/lAnhQR1cskP1QY
	 pVCJ49GRU3/r43OyKzf8UZCi7hm6a7ET2ZEYFpbjv8rPowNAJ/TepRNNwOumgYYCGr
	 OnzNaSWBShPBrS3dCecljFr2eGpp2PBuXx9zhjbuq02oL5uWPFDkiwtvCI+DUgkLz+
	 imR+LgJeCuO414JcDT/XavchJ5ZHuhKxkfLxmNbv42GoLGgVr3k4i2zlfgxtBjUM9F
	 HF7mUKvcUj+MudoyEZLb06UoeiQexqd+FjIy2EhvTCxJnSYMLjm8E8FkCfCQD8DiTk
	 cMpSycSm8HlwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56ECFC6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393685334.1734.14129688287943375321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed95f2b69d8821bdaffd839d961a0d8d8a765fa60aec0e137562f82ec0c2b74
Date: Fri, 23 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663936853
