Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42627B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8032AC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670073054;
	bh=zMWUbBvtZnzajRBUmKtWvMkwtqkDZ96x4q/BuTW5Ryc=;
	h=To:Subject:From:Date:From;
	b=TVnW1Lqhfe+2KilckxMWJlh3fOCnE8LzB1P2SHb62Dl8m7bewmVrKc4bsZJObH6so
	 Ofsm3k8Yk9ylpnOgh/s6nFUD4Km1MLaHrG1LmLA64oj95as3PTIL3X11sFzL565hKT
	 HpkMr9J1SONOX3tJ4oOG87p9+UpU+DDifNInX3kDvkmRuNBTz5j2A+OglKeqdSdqGw
	 A3VFV2D6Wog1S/eFQrf7ruUTkBZ2AnlfaK5DbfIOwLOHIEnWRkGPY/hj1vdKK9efcB
	 NYxJNhAnHkE28pZ92xC3KK6dzD5qPnjGshPhjFpeVv/W4v3Snh98x3qHCd/ZorY1GN
	 SeS9WSCc3fcnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CE4C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167007305440.25221.8019215997396783162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 112db08f12c528f91c277c3f6bbbb19312070e5fd1c8f6362147a13cb7331df1
Date: Sat, 03 Dec 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670073054
