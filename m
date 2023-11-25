Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1864E2FC31
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnubPxsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 810C9C433C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700949496;
	bh=kPPqX7n33Lr+r+y6q/jXMsULT8WY1JxNNbd9ApyzZV8=;
	h=To:Subject:From:Date:From;
	b=qnubPxsLI+sxx+vskLib7g/htxu94+C7b7+ClTx6JExXEUiOFIpj2ovqC+3i0wBGa
	 qK/nRgDCzwCut439GCXmchmtWDCpspxFfKF2O938gJrvNHQ1QguATlloYYY7Ahaq6a
	 b943cUGeqF/68C4janVxg0F/DcsutlVgG13v8Zw5ALuB3PgW7xTNwwl2vOM+haDtoo
	 xeBy0IY/o24b4Ddmv7E1SFY8onwhZAcRWm2FBqo4j5zTkNREAsapXCnxxfKdmv6JZI
	 xeI7Pz8VC6KMcI+G5m3Yx9DOU0OWtBc8sTfy6ItsRZRr55/wWPPIpgIQRCJP89jSye
	 pAeHrCD9bNtyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D36C4167B
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170094949637.27497.3075061005993531515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3954148c8176824b6780a5b4b2912e121211d9864882d933fc4cc6ab779dcbdf
Date: Sat, 25 Nov 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700949496
