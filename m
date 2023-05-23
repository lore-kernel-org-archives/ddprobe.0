Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4C31B8F2
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 07:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2F3C433D2
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 07:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684826585;
	bh=tAklb2WFCL5i9AsoQkLslanNIYbuJtQ4AOrMSTzXr9U=;
	h=To:Subject:From:Date:From;
	b=mTuJPmF5o7NUHwQQahl4yoSbHM/sHTNihI4mcPFyy4Egfdlquam7ynMLGQWtaf3G7
	 OT47Rygy16bsLdVLGy2HPUaWlfiFYi9dNFqL+pHiuHVfZwALfB5CCXfbtSEVlfSnh1
	 oN2Sm9Ys5+xfj7bgrq5Wmm3CV9/2iKRM1Ks2oVs7YSqa5NrQHhcMvcn49F47H878xb
	 fdQFEmDvRZrMD3dxsCDj2EOtXAJSNk3N2E0E+scp2HilkFTby7ViuZeD4GcKS/qa9W
	 oYtgljRE6wLpIQDFCfhhfw1ie+GXHtYLFt1ioIIhevVo0jpvQEPPn2PXYa5PQbSK+H
	 VJmW/+U65e9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAC8C77B75
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 07:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168482658576.15284.3466216336016508147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d795cbd3de7558fb32653603b3dac5984a01476b7e2f90b543d26ee562e516
Date: Tue, 23 May 2023 07:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684826585
