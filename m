Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53C38F55
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E4CC433B5
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669734654;
	bh=XxC6rg7/VJk1Hpzm68eh0KEh5GHUmGnEkZlovPqSSyI=;
	h=To:Subject:From:Date:From;
	b=NYac8djKeiUpXecVKhddDfarkFAAmFPNREK5m/39TiAycwgECPZzj1kclH7FfumJm
	 UqCyww4NPx196DOCpf6q4XE48wGOquiFyUIorBUyWUyFICv3+tdrUMLw32mWrBBamk
	 hZI6LxIgjGZAiPVwm/QmeeEhoo5WlyStEToSOsRDN5NI1MXf3I6KXyOcvJ+Jsw70XJ
	 Fz279OaeQFpyQG8NHP+bUa72pfDCryf7Kp9zwe2hvjgK9fiYmf1izohJ9pzBoh9JFP
	 zU/dsCtENLZXsvHDf8bvV0h1mdXSq5GMaolMBwf2j9ZhkfbatH7QF6NRPnc3h7D/A7
	 /YMYIvyUVNliw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 585DEC433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166973465435.10920.14021094704066576490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb75292f1f41ca2271b135e98bec917cbad0ec6eefa135e0fd8e065ba6f552bb
Date: Tue, 29 Nov 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669734654
