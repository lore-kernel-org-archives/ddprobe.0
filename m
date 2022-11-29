Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A8E8F55
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 15:40:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88A5EC433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669736455;
	bh=ho1Uqrspwj4VoyJQtVepPPFAxlnsUMLwt1dwltdiSfo=;
	h=To:Subject:From:Date:From;
	b=SevcqvqgwdqrfqkarFGH5S5DnUH0mJ5aV/ozI5MU2d6posW5RpcbgyyinBI21AupY
	 u3E6RQdNTGamEC7HBe+JscIhFT3kHZ6L8rKy2qi8CfJoUTNZw/77+m/gJbYTd/658K
	 JJgC3PbzEBRAHWw61jqMargUfuph7sXQHM/ztTppLccMC+nM2Zdkbxhuq3QAHUg3Dm
	 /EAa/hv9cc1WChjqgiiS6TfY8tGNCgcl5kTQq6BLGZ1QZiqUD2xPr3QcziSvISP87U
	 IbOgOtXMH/8KF+BIkhpFfijtanF8I8MAa+aTAm/rFLkJRlJI0ntgeCynbotIeH0etk
	 g2cjneJrtQjmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70760C4167B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166973645444.15422.16380576565578797352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c8eb0bcc0fac78a7560349205448a66d2060ac66899735ea81ede36e2d8980
Date: Tue, 29 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669736454
