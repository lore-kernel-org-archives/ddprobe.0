Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777E917C9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE59DC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688310248;
	bh=L0guMwXn+7BUQX3FP5qT5uCYDcNYtGYjBDmvOLFbbPc=;
	h=To:Subject:From:Date:From;
	b=W1fpLYvvrX+Ww8EGvoxM41ajrqTXevdt4DYvLw1Fk2Hw7veSrJ3KfDBF50WbeKkxX
	 eZZz3mKjveqjOTnB6Wly2oyXH+SBUVLdJduoBfXC1882GFxvFyKvVAOLpxLesMffBr
	 n0faHcDc0SVaG1AZ6k3o0dxLU9T6rroze0ZCsSTTOW4pKSE83nboAS1m78D1OEwl8F
	 9n+vgOD5CPAQDDr75CuIOSBtbCXQyEV+c2K5yJ1oCBz13OPajtS3wfqIbBpcdLucaT
	 v5hBI+KPdp8tTHeop1bJoJ6SrdVVBsfxK9XGtAiL4bb5K45cWE2HTQtLOxK0yvy4Ns
	 znqLcXi0hzGvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEADDEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168831024870.17631.13804589882822265922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41eb693f6289d8b3df51814c351d7f8264f83486d17b1119931341c492aa3a4a
Date: Sun, 02 Jul 2023 15:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688310248
