Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2D3EC5
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 05:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E37C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 05:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687758788;
	bh=ujDaZxJhR8e3xU5e+2+Y4d+mstDNXOy67nLW7LdsbVQ=;
	h=To:Subject:From:Date:From;
	b=bl1dApB/Ld6ns5Fv6Fc52Kr/mphHbEfPSbwoJNWPUaj0l3zao1GmNAs5QGMaMSzgs
	 rOkp89NFUF9Rdy4O0wtjru0TPU3M9EnE2Wlv1rZdNESHwZMG5Ty/yzqaF83Rbv2Jc8
	 GXH20O+MpaYqzj2V3IEUGGIJX28bFFnfwJ1VQwJEN1txOgdgrHWgOfenJj19EHz68J
	 RcAG9E12aVLm+Q7r0gt5w2iH2Fft2zAl9HTitfGPFxB130dcI7K2QXg5Tl+GMzPA3X
	 iIJLhx13QT4Fam7yLV/xZ6ZuSwdPDgYiCrqfD8bIlaf+JhDtIrsWyEb91YKiTjflKf
	 o89ixQ/6vtatA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE33EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 05:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168775878870.30448.4438364563538676814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf48ea657fbfe8c7668b4907b1d8741326cf47c5f03ff3d099da65c3b4b6ff0
Date: Mon, 26 Jun 2023 05:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687758788
