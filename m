Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8B3A21
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 04:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1CD9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 04:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683953826;
	bh=8Wv7dKJNHB0HWlDfr/l3FMKlxW8s16ZVa/Y8lkTgzJA=;
	h=To:Subject:From:Date:From;
	b=UuqVXVv77necD1bPMwjwhWYHLOcrwCFdyMYIJGAWx+kLODD5OM9a+BjsXe1F7T9MK
	 1P6GuLKJpLYc5bVIDaPrZQgZqcPs/6FI4y8np5ubzzPmfixfr7sd7dW1S5o5HoQyFA
	 ldiCu3CO9tA6A33Et63Kq5ZesNM73DikDPljzw/n39QFwToC5X8usoYNNq8bGLnsYc
	 GZP0Qia4U59KmK50XcXcK41+riDke8GbuvLi4ull0XKZpZtZcQrcHvVoJcimDL4K0M
	 YZfGUd6WX09Vxnkz528oBCwiVGlfWNr8TSuWej9HRzWnMvR4/1Y9Nq4etInOCkQSyo
	 qs4uQtrM59VFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF3EEC77B7D
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 04:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168395382581.28088.4150301931702573555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f0a24c152a00307c03e9a45f8eb1322f885756f150503730fa63c09eb5c042
Date: Sat, 13 May 2023 04:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683953825
