Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6AD186A
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE85C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681638965;
	bh=d690NCL99djSY/DQjgAJPIMAKRN8pZgvxbGRAVBkyS4=;
	h=To:Subject:From:Date:From;
	b=Jij1K/o8vV3EO2v4pJUVHI/bxbjM+RJUgSWKwB3ylOesdY/IzK6aAuyq9mFrdRcQk
	 Q0tta2E+8a+H0gt4N4b8mcJLN2ZFLsZyK7UhObPPy0fNUHJ5tZrZ3GZ2vPpAefdYfu
	 HNjpRCXGIF5CT9HSMxjTcTPJxOhD1v2c9rxnAQ0Ndvj4bF2qfaXs0QH31pdMmhGFv/
	 9VpVKG9JthrHT2TZIYpg0Soak47RcInvUgQI0O/GvcL4ZPaj3zk8CBEtq9UGj91pr8
	 OE4no/ueYm3cAxX0lOfdsAr6Ws4P7wSlR1bUBPvJOoq83ma+9g2F/LCnCYEdAOlRyR
	 XHOzIKMY83Npw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD70C77B76
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168163896576.6406.4593919116437409270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f44e1ab4d5c86ae3779e2841388e58428dd75830507531bd4d89f3fa29b059
Date: Sun, 16 Apr 2023 09:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681638965
