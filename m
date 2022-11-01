Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A0D641
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 721A4C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667296854;
	bh=3fM8sApAejxhgtK3APxHrnDRyjGYadXjo8K+W19XA78=;
	h=To:Subject:From:Date:From;
	b=I79cSk6Rye+zIhncbN6VZOHB/cChq/AxkDShACfOf9IkLgdwvTeZQ9Aseye2/gdIR
	 yT2pmNvV3BrsZdBey7z2wSyM1DGuxZ6Y3cTdi1lhTR/9IPwDBFFs1qZ9WsQtAwA3Va
	 HsUCPdYsxJ1ifHp8Iy+BFoAI3mjFIJ0uvUjedvnLrVFTacmPIX4w3YSW6a3aNshDxf
	 hBTtZh1LQ05jkM0vZa2ICCtIYLk3LBVJEExPGoXQ/WWiaD0PL7LiXPEEM940pn9s1t
	 XkxrFDsT4OINa2mzz+57CxorK531nlKkBzEPHMRmtARjcAGdQHgoPVf2etytndiiP3
	 3UWQUVK6Jh2KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 597D0FA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729685435.18041.12308098917864692327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ddbcdc6e063ba1f4a64e52ed62664281658245c0fd94d96ac6fd5e0a066d45
Date: Tue, 01 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667296854
