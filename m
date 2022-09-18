Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A5B648
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80482C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663476653;
	bh=zqmUHyb0+577esBQR/ceoyAt98Ss1g8I01hsyxy3/xE=;
	h=To:Subject:From:Date:From;
	b=E91zjugTnd432RtygWatLRz5sXxEBIElopUH0dNCUCdyeJkiQKBbD7410VLbP1hU7
	 dPwdz3VsLu8qBFwJ/AeoVuaWDYLp7N8yzdXw74TarWoRHgeV7yAognOtmmwb6JmOwC
	 qItY4q3jclYTpVtXrQFz9rDIlH+4XxXexWcMIKULFm9PCDJKAFG9e07BbVObuIlfRi
	 zg4Rg5diFZGcwtfLpkcoQPoYYLqCSh3/4keT66j9BHJJxH+rk7F2D9oPq2/z8BQw/l
	 PFNqqBS+fhXpnmDGf8r+mJhtERAs+d2alxMWzj0yuM1Otlv9U+SqQczLvbvbszS7UR
	 U9Y+85darphhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6350DC6FA86
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166347665337.518.16361530137414093171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9eed2ef77f5ba4b18fd0272c14ce0cf16428176710580658b1c9b8a13373b91
Date: Sun, 18 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663476653
