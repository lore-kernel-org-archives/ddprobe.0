Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40923C3D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9CAC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663977053;
	bh=GuiCHmB+Z3u0wi48SYZqWRF/zrqVOlDRaFt2cIbvHI0=;
	h=To:Subject:From:Date:From;
	b=cRkQ0weYFfxysrTxgfuGuMdIWMbeqcElPRLzTyozGUv0bupzZwyXa8KrCdb+fz865
	 o0rUz22fS3GmGII73+LaWVwQKQZod7xLvn1JnJQfAUnmKtxGRN2UaUFwzG/macgD0O
	 0KxzA927tZBdcnios5qCNqPTTgeQkM/BQA7cIIV/2UO0KZlCGD2uj9mihC/+yGuEPs
	 02DtgvYPdBDaAAN/HCl3+3cXYeyjO5TVgYcnLFnGGr8kRQBpzjJfkKhxqL9pm16bQC
	 5yNcTFLPh9xJjDvSnB2Mhtgds3+maMbX2yqPEkCEqohuioPupGafaGxl2cd7T9x9wf
	 DuICkVHhyNVYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53596C04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166397705332.8396.15471715210327413938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542c0b7fa29e2a6dec110192c8997e40a3773eb257907d3c9b6a48e2e43db48a
Date: Fri, 23 Sep 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663977053
