Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A847C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7FBC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672648887;
	bh=mxPXV2FGUk1uEJg/rPIhHOkciZKchIZ5MKdmxs5MSXo=;
	h=To:Subject:From:Date:From;
	b=h/OGjiMKk4PoNnniGmY8GuQkEwuMGAp+Sh5lvdB5Y+97tUt5xNsUh4hv/I35lz3oG
	 IB9xM69maho7AccFcvVM0mp0J7EWcuP8iY038+2SXTY07BVZxkXwAQhFUN1PzUHvDR
	 HJWZkwAAIVVt00Gcvr0SOqNODC7mHIP0Yj79+zXTDqzNauDHJU766ivbERzhBRMODR
	 Oxu8xt7URHA/9eTLovLKbsosIS4x8/ht0UY/wOABtFQlzbXw90yp8aAgY2UtQ4f2op
	 m5RPNi56Hb8ZZKKGO46oj3p+8zGKFLWEubINbWERqn1rKJd86ZhGZnrNVf0Ndg6gDO
	 41DmO402n9lVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BB7AC3DA7C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264888748.5115.18364559611660901103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f00dbfe976d2aa48df07e9416e2f4641a30e9d705829e9acd1fe951e4dc0e1
Date: Mon, 02 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672648887
