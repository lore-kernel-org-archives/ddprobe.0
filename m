Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8574FECA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 03:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B5FC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 03:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688873228;
	bh=Zq9NOv65G73pvxSjtgAUfD2dMMfEtyScZDLiyf8PyQw=;
	h=To:Subject:From:Date:From;
	b=ligCkrkVh0gd9q1rmPliaBdxuc9i3aeTbYWUxHXpNT3q0ybGUiWMyCSh7oy7lnmGd
	 xB2GOJaw/3nw8AENOuTih7iHFHxToQM7W584vQR0NKnbdxYGbwUQWy2sYJgziu3tNn
	 VdWMtOGPLufnU7lBnEI2VSy9W96tWQ+6/g/T4dZJPvDHDko80okk3ykxgt+8/vQHem
	 JmW2D5pN2Cz23g2YManG5PFyRj/X+Bk2+NMG5ygOSCgTsatyVXS5Mcz1Uo5PXiwA94
	 zRfTGFrd8x1rCZ6QS+rmuQXCEVr94EzlOH0ycLuabF1ll+rChaP49nghTQL3Wk4Cuq
	 Kavg+Nsrc9zCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AC8EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 03:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168887322878.7965.18196153967752441122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e04ae9b09abb01b059093972eaf2062bbf44b811eef681a0d5df9da9355761
Date: Sun, 09 Jul 2023 03:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688873228
