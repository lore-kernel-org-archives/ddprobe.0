Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1AA2F32
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 21:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00A84C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 21:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688246649;
	bh=RHlSrJq78IKg4gn89rpozWaEM1STUd/BSPgHA1YV9D4=;
	h=To:Subject:From:Date:From;
	b=bZp/Kypg7AkV+d+A0Q8tuHWTjxzbbK0o/361UDAusV8iaL5OKiiDNYqElnDbxUgPX
	 dLTYnLfgYKojruFqb6w1SUeCdSGPD8+v4zQNaxuNL2iQOzhlZPrhj8FZhRj/28YrS4
	 eE7xi3zGbTN/Vp6m71uOsrj8ahWBXzAMR9ls9BGwyMAH53IPMVNSGKjBk6sNE1ppvn
	 jGgU7i5hYdHuFpQ3DSZ5umvuSeze2dzTXZnIH6Rrkby5Pr3RYyojLw2T1Yjk6tpK6i
	 IQKiVPO+w33SSyZFlgUEove3czBOfAybQuwTWe5DQChvZj7l3FKvlimMMxwTxOimgI
	 bqH4g9lb4gv9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D15D3EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 21:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168824664880.5622.16804123531471800006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb2aa36b76a6da226a4c50b26d5218ee5ab24e573f3fd290c3f0d11d5c72659
Date: Sat, 01 Jul 2023 21:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688246648
