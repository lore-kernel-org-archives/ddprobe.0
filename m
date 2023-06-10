Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFB93236
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09E28C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686399006;
	bh=gF1i6CJyxW2FrR9PLay1pW3GndxoRxQAjvR7CKo3NV0=;
	h=To:Subject:From:Date:From;
	b=g6xWm6O+pZumkXTn2azQ8/a3dGIYhKJ7g53rsa6tFYvnEHDAu1deDXVXjcY/mVBtd
	 xALJfKnVh5YYLMKIySilc9XF5RKuXIlBvM+VO7yPJkmNL2YACeXseDpPVBk3iQ48Bo
	 nLPwB6pUh2M2kx1VlORd2ZVK6C0d7GXNpchNgYX5M+85+KLWWTxudH+ZD/OuKt3sMo
	 Sb7YGR2XU9Uvnt3iuX6+PsnjXKHqeZv3VTRLugLJ6Xp7W1uW+Tnh8yaOnNZyfyh58k
	 EDAJMeuTQ6h0pIa6qvRvIdEfrdrX6k0feaPsJtFM9u59PLmkjz8TjlTWrldWsPklfq
	 L5i8i083ClnRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F1BC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168639900577.29215.12486724296167232362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c7fda1458e3494141d75e374440e6d100967ccb7610d74cf095efdd3a2dca7
Date: Sat, 10 Jun 2023 12:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686399005
