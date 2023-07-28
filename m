Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D06013FEC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 17:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9685C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 17:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690564928;
	bh=jm+Pv118e9bpjiBOLWQrUbEWhqNMWAaHZcKrkMXTVf0=;
	h=To:Subject:From:Date:From;
	b=DyA5JOZcZ5+ZK3RdC1HpCIc+s7GgWdyAqdEiE94ghSaExOgebRPyDYHiJBp+tiTpo
	 d1t//9zFT1KLyDtauqehlbPQLMCdcvgKWDbwTeUUB0p/ZsxHBznKb2MYo7DkHIOGja
	 ZzOMPxqPUYG985dtrnit5rSqYN6iR3KdMjE+06lVkLy7hfUlJ6k79xKCs5EGlHwzqN
	 RWHY+DN8ijtPHWkFzslpE+dLLaKIt9nG7hoFp8VHPghRW/hSpKt57JHX3gfYka/+d3
	 FoEOPPcajCEfkLZhc7lj6Q8OhOjPuh/M8nIfuvmXqOUeFxrwmKkNkBtxzGQ0n3qerp
	 OTEAigXOpsohQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1899C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 17:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169056492871.11914.1148676162466511579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739a2c1566dc9b6199806a325f0542bba7a3a415288e72024afce8ee2999d5f6
Date: Fri, 28 Jul 2023 17:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690564928
