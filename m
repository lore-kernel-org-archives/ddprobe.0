Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C48EA0
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E01C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664440853;
	bh=CJwSYw+Ey1q3HSBL7e6b6Oeda6wVGyimKw7b4GYrgD8=;
	h=To:Subject:From:Date:From;
	b=DK3a+XM8eKyJwdQx/ano38l6oyYDrojTLWhuK5RaamzhqGqQeFfYBxzgHc+yowVGm
	 KOq3n1Ntrc56sUuZ+eKwk1KDWH4A03xWH0yZdUQnRyH2d2uSMulJuoh44Iu2cZ/AJu
	 15gmIiy17JwJBvElSsnfSPunYlThzj4Oc6JIFdYIyjLCvXDLAG/E0TAtiaLgJgLDSO
	 Bs645NbVQDHhGEOrE2bD3xlFcXYdNjkM8ES6WOYRNCuFtbiklNy+bAjIL4F4pnNBSq
	 kCUSAB0umNFfXCW83TPKcVgMgJj9qlrkYEc2j3zoytxfYTrGjC23imQWlb2GXp6aNs
	 hIj1KJYTrFE+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56906C07E9D
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166444085334.4073.13355515497915918581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c589b66fd71d49344882b37c124b00ca37537944e2757329e6d2ce813a08286e
Date: Thu, 29 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664440853
