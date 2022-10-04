Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FA2442A
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC76C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664920253;
	bh=af0B9LmpqcnNOsYPS6EWZp1SucqLl5OmtKIo7hWCs4w=;
	h=To:Subject:From:Date:From;
	b=D9mWRiM6rZ/VqTSsFYeyWXrfmyDaSi0P3FEKGQJgYulEMWIzK9vex7FGr2jwmwteh
	 LspbUoX6bPFQHVWsOGQLShiOKuokK7GJVS0NMHb0jdCK6vYuL3VbaN4Dpc8XBxHexZ
	 X6BvmhfDx2jkGRDX6nqZ28tvBD3rcSQtZd/S3Rl2k5/Yqiv1asGgI05KlT4bY6h7g1
	 aC//JJ7vO+hjbT5sDX9SYwHbz0HjryL1YIhSgR4yGmKdDQLXUFyPbXGrDqYramtNYt
	 CeahHdZdrD4XatbfMdMjcxIsR1IUZyePunA/JnR9hmQSt0g1ueaLQTv6uy+dXXsOxT
	 WUaQclVBstYqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549E7C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492025333.8438.7018599605384736447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c008cd41a7a5890ef172809b9d1d8bae168aecbb15a4858cc5d5542f5bb5ed
Date: Tue, 04 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664920253
