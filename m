Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6587EA
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 732BEC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665049253;
	bh=UzWBnfEGs/VqZIY+sCA1ZAH93Qi5HBMWLavSSbPQkCY=;
	h=To:Subject:From:Date:From;
	b=r0gqoS+MF+71KwVhF7KT5uTVtEpEwbLDCPsaXrflR0B5UGP+StINS+XTRSg9ur8E7
	 kHC3zA3uFKyNwC2YYiMu5x/eC/zBag+NCG6Mrw0NvRCdmYt0gLF7I31ekewRC6aL5h
	 k5/kunc19DmLrYBmblTqMfEmvUVfqUsKiMHc1lOVuFlwmh2sbwxnFshFNoLDRsbA5R
	 N+47AAc4z1icOoMDSveUY1yByyTUnev0yZiGn+nhWrPDqzOIdLAyfuOuvmXMpyxTnx
	 jt5DgDTlBOChUR8T0NMdz4U0h+8PGsaQxW/uDxRcaTOiA2KeTEyZQSFmIcy8X1xLNk
	 Dwfp3Sm0Nf0sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5597FC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166504925334.31551.5194608321275676044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d89fab55049868932ef4e66512867324e57b10e4248c3b734f4665ee06544f2
Date: Thu, 06 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665049253
