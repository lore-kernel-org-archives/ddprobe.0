Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000DB39C
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7FDK4ER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86E4EC433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699318696;
	bh=E1qTw79xcS2nPpekOlTWK53IhgSRQl0os3NZQCPG+aI=;
	h=To:Subject:From:Date:From;
	b=A7FDK4ERzeDbGEdlCGEjxpxDx+OZHnac+L/thFqHPRsGrCE1YuTDTfZDlee9A006B
	 LJVWYACfPNI4xBTbT9YZcNXvV09XqNhLVxPvKpXyoea8FsdW5uVyzqBFQVrI5IVKsd
	 GjRs/VCQuJFLPgYReoWoydyA1qrhiOKK+UwhD+HZ3MlJowXFkhotzL/alo3rMUpUmQ
	 QxdGdGvSvitoXBPZkZmY4dcgcov4KtGhePS3Rp0zesCMr5xvcadnaf2kmEKgtXoWCR
	 Mt/iVgwQHJhUYabSrvFho176bJSdeMxnJL8BZeGXh0fehgO4RQfH+mhs5KDdwZ1IHj
	 Vdr9h8t4NdSlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C0DC4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169931869638.25456.18278338073582649031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466e1680497a90ebb7a5b3a9c6a8e26cf01874e940bde0d01f4cd5bd3cc192de
Date: Tue, 07 Nov 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699318696
