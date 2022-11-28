Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88D220E2
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74461C433D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669622454;
	bh=kFVLoIkVeV2ngeMEcrS1WYT858Q0oivzygTQ9lu2so4=;
	h=To:Subject:From:Date:From;
	b=DRoBa4eXI2nFnjZ0a8btA7D83ku9O6hKIUrEgSsewmnCdV+VFgyohuypU5WSQX5rD
	 GmJnSNIdeHVeUBsZSQAUuj6aun0+OcFybvyQoxUF3K0avmYPsP5pJRuyKm87HVnqPF
	 PTZwkXCm6rVEznsEi1EYFdmGKztR+5lEhYPD5wQDT34tqamsFXgzWsVye9249X5FK6
	 2PQNTCqJNPtbbrTwzZpzszWPGmKpepeLOOoUxHK2GAdQtXVE8dhCG5pOkE/3caByqC
	 2b1jJ+eI6VGtKZ/8nCjLCkErnn3xHyP+CyD5GfKSPS+YKfWMa1V5CcXsk8ZTQGOebS
	 90IcExGv1JSsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D399C4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166962245437.4563.12824319194232207910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3d17b8812b83d0761aa2924da635e21dceed3929cfed903e48957448c63c1a
Date: Mon, 28 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669622454
