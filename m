Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF2D7E0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 00:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECEDFC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 00:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686617706;
	bh=HpRY87dfoW0VCodphy84lmfcP2ui4S1hsosHk5jR0ps=;
	h=To:Subject:From:Date:From;
	b=PtX4qpYtLNeDc22tPUBUdvmDdCzM5D08kLFIAfBWHVhMhxmerkvdCZL7RhG4pVq7o
	 kOsT7vf1NcZf55JofaMFKWH2RZA5f8rSEM8z36/JtJsm4jYdM4LyCl8ceDtd4Kc008
	 qMY+upGcQKmbvzr1giZRm1IPBWaRwX8m+SCiXetFyggP9aUw0+LH823ojJvbtxPxl+
	 iPmK1Bi+BljZDSeoe3NzYiFshkyfB4uhB1V6ozKzeiNljb38UqfdDF7eBfKEgvEFY3
	 Bl/nFT9wgFpYuDkpLwFk7I9QNAjk8NBus6NSnzo7wKc034j1+r7sWIg8kEMFfp7vHX
	 o0nokS7MkypkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C52C7EE2F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 00:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168661770580.11528.7898830279631288659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2065f68f2fa07550ec7d5ae7a260658128d3b7af3d84798172f59928484d947
Date: Tue, 13 Jun 2023 00:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686617705
