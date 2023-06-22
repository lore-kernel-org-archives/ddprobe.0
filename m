Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A98188
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 02:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D247FC433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 02:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687401788;
	bh=gzMB1g9aR1rfKlOEreCwL+E4JaS6o3JCO/txbovHtTI=;
	h=To:Subject:From:Date:From;
	b=fuIE0+3zgn0tc8tBOIS/CdEpM8hBKKD/k4GQMR7fhH4CU5wcxoMV4v4H2ZUzZhSJt
	 Kt+oqoAwXA2mv6zGLs0FLGe1bJYoES3Og2frkBJwIdYuItHV0xNh+Lokfa1XIwHKEY
	 rxGETJBK6fQcZgIKTVEvmplowaphd/Wyc362gAUrINn/lP+2HW9sk6yXlu6Qe0zW4f
	 4d9n82iGJocEkJ7a0zKcNqJsKXezqti2Zq2VT0jbxDrlawyL+ZWFD0oPorR1MlbcRO
	 23vtXQvhQSeMd29Nrdjex62laO5FV/GGlu2HnI5SCDd6sbIsxWig9yDpB7UHeKQlOj
	 e8QYgKyFfP2FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F9AEB64D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 02:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168740178870.17574.10147874932384877914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c39b7b05e826dcb98eef80a9d508afa5e4f41edcb776a94fc348a2d71de0827
Date: Thu, 22 Jun 2023 02:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687401788
