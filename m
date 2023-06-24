Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4EAA953
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAE6C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687644188;
	bh=Ot/PpFnhdxUNobKCYGJfvjTiCkJrPOasGO/qnDG9cpY=;
	h=To:Subject:From:Date:From;
	b=amjSaZSBvKHnNmKdDza5ryAKPTwNRRMt9MsGEZzmTr6twuN3I3bCrG3pUGRUngzUK
	 7f0oBypNN0j9eJFFJBcHeoTx5nmu2cyDqrRxlIieRrAx3mwlE8T5HQ3JPRqURTJFSs
	 KfbMFwCm42UvbigaGrC8rNJOpYrG3RmSWzx2FWDhjHDHMQWcVduN9Oha4dxSTXlyRD
	 KGrb8MGvUTkUdsxKlNXttIEtt08LFcpnxXGzs+ZGqQ7MTD+9vLTs+GoCWYK16Zc7z8
	 pdPUm2RUS1MfrVWjFbBcdrUjTn84lSPV0sAEsPkOyMk3YVlZ3t/qz+8KtcArbfYajk
	 c9krPXRcubskA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC11FEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764418867.28075.11675983992816039575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d038848ba960fb0652060275ae75b12131cc5040e9ffcdf4aefb25f47db2f3ef
Date: Sat, 24 Jun 2023 22:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687644188
