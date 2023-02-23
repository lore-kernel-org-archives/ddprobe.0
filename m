Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3CA6FB7
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 19:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA75AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 19:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677182105;
	bh=VnAUeBJHwx/qwrLi//BgaEfhhP9Gf1nnVBDwyPqTBpk=;
	h=To:Subject:From:Date:From;
	b=kLnqag54bFEY+aYJhcGtIuMeOYZAwA+/10bX4nfTNY85xk52acqqwySAC9mfu/2B/
	 u5roUolMNZB101OG/yXg6iMpir1zcuGeKmDlGH4PHB1kRRHqSQkVSqRaTdBCtaTnsZ
	 JNUcvugCbEdmBD2aPgIuw83p8Y1aDjmpWxPoCw5oGjmF92VdXyTbXHVtPiysQnV+ol
	 2r1Gshl43A2YInRz525diA7SEMmPgXwINIuFzVKKOt2yFrBMK6CI1KoNofxZtg4SEV
	 7YfqGcbEDNXwouQs5Oezxv0vxai4fqSkN4k9kpb8TZL+xK+M6uWZF91uf/kfhWs1m2
	 F2SCYL1aiIA6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75E6C64ED8
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 19:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167718210574.8138.1545522512069428773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8daf453ea8a091addfc316dc2478193aa6462bb106d4823b45e2d6e3431abcbe
Date: Thu, 23 Feb 2023 19:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677182105
