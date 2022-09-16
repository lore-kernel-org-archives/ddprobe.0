Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CAB180
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D4BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663302653;
	bh=55A0ZAGM2WIDaAB4fuK4VcUEQDmDkcPcqVxaTBwnmVo=;
	h=To:Subject:From:Date:From;
	b=Utd7Ypswca+no7YD+5gMxyJFhfzM6WugSctQPJhseO1dxEC+hAHGccSM50Nn2Okl/
	 /ktAsduSvQyjsPO+nOIv60iwGMTFafn84I2N8hCbk9JCtAy8/SB6VQKw/0F0sPtJp3
	 HrGJH5CcXD07N4S++Z1+MAKfDqVyoN3EAHEZnvu6CJWDOZdeknNuitwtlpIVrVrgaM
	 zWsyFO8mxJs+ofM16PIyd2XGvFKG8EwK8jNVt+QWvtrIwL1u1OznfhM4C2d15lEg7O
	 8+dU5V7Bj6ylHnWld0Av3pjJk+4dP+VN2sojDEz0v4EVHZULiZA4xoggyXGWdXN2+d
	 U0ghdZpGEotmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D43ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166330265335.5869.3068958012409003750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472e544d8884309b71d40a4717e6422b94fb5a43b9fd8e540708031f477a8253
Date: Fri, 16 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663302653
