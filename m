Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4378F1FC1
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 14:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C142DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 14:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689778268;
	bh=7A0NYQzBCFkRDXa8HiHsNylbpVnmAejNnM39mpqUTj8=;
	h=To:Subject:From:Date:From;
	b=pshF1xyvAv6zTxy+7RGMuauac/9xFHo6Joq5UHMwnz++ITtwxFcnxCmQfMRmPYxYK
	 BlZ12pP+tyjdv9ksAKo/QF7bWGd3SqHzDFBSQeAIvptWbpfYYHHqriPVnq35GY2dXL
	 kq4cTwiAQwOkCb9DdWzqjbM8ssM6aiAuiJOUoRN9JN2VAr3fkFu/BaOGo8+fxWEvOs
	 tR0CtNpS40qtv6SL7tGRe58ZpqimOsf+y4qTcbbF41+Mhguf0vx4eblFFB3qBMSgrY
	 Hxq/u8TchDqFZwEN6dYfiZz3dxzZAc/rJ+G+tnQ61eprVNnIsWmKlyUuke8AyaJR9m
	 SVQu1n83qhrfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B4DEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 14:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168977826868.2217.18376985290320664833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17bc06042a019cab80ff0dca06016f95df03d7a855f76d779931bb9ad2c1aa51
Date: Wed, 19 Jul 2023 14:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689778268
