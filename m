Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C74134BD
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27E2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687811588;
	bh=fQjivvwJGRuVVCi7Ck/gPM24a1sccMDkFVsrJkD3oOQ=;
	h=To:Subject:From:Date:From;
	b=jDFfxrwKx0UVxwcLp0LhYk4WUVIMR0eVe+ykkmgQShGhM2MHPdcggpt/gi9j+3x0L
	 Otrk8ksxJ0C3TzMWqBCJelyuHvRMoWeKLetcoagHg7GiIG35dwyFzVN1omlPsAc8A8
	 QH4ba8gTe/ejA6a8FS0VZc8kSnvsdz3I7cMaDmn4YEJrrLShLsZSWN85nL008xpGsy
	 3o3wYYM3iczebz+uvhZ/WbkZz0Z2hSyS6IpylPxf6qyOEsTVq0+RGbc2YsMzA89Hmi
	 lyGnSuKuBBeMQw3BtxLTsBrA1Yy00nJt+v6g2pWu0KsOD8xPSCYPwQp2qvlfS1z8Qa
	 LAdMsswBUZ1lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D05EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168781158866.7167.5084724077698957671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0927b420a8792eb3253835bd7a82e85c7fd230b95ac1e505c9a17b0541095f
Date: Mon, 26 Jun 2023 20:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687811588
