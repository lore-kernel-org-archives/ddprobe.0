Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DBB6ABA
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B30C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667899254;
	bh=VguHl8Fl5b1xQnbBzYSWX0F5KyYvIaN+b7iLrStgvW0=;
	h=To:Subject:From:Date:From;
	b=G3ilwUh66nui8i+KuTta3nGwvD3bjsmA7FIdKK3aLJtPc6F+Yg2Z2QFbfYu1SYn74
	 ArdtlU1pbCMsZhE7u7pGPVlgAtmjSNUUKSGZFRjPv8vZdSdsVmuSytT44le57L3K+8
	 YhLA/wDxnKFaOIp0yfIcPZu26DOU8cqlMC6ntS94hOFiJ7XYXb8Pdxd0uFi0BXOQV+
	 qv1dWVdtdQm6oil9jW1pEUyyv87Up6JO5TQ1S//BvKX4iWDu/75GUei7ctsvjao2b+
	 f0nA0KF3wL2TBnGIvMD05JbSO/+ZwprRAbz7EpRt+sSp+riiB4+60wdwOHklot5MYt
	 malXfY9hgVE+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E2CC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166789925434.11963.12142574631767804900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f58c9763ec4ca8bd4b235028de5709691215aa48c068eb418076cb9eb647aa
Date: Tue, 08 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667899254
