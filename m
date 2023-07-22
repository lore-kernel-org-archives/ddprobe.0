Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA5362A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 10:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6DBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 10:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690021928;
	bh=eonYDhBR4Zhe2tkI5DGmTmwQeJcP85okuAnqLYSpuIA=;
	h=To:Subject:From:Date:From;
	b=Iqa7t0kwdQijtKuJD2WU9aa/0cbdz/2BUCcDReOR794T6cHAMlzUKDghvH1lOHR4S
	 6YuMOO8cuc7exlVJByEKqAgOFdUrFry7WlB5vMQl5xteQRU8Fa+iy64tzT0aZ+GgjU
	 ghKLbMkYr6gM3tKX7LmJZK7YkariPEowSmXvffhdf3vSWED24HlzJgGSSql/F7i9J8
	 GU/qMorM1B9AKSne1dPuzQtYCMSrz8hAPrNTSBMDG/DPMqAO7K+uRtJn24OUXKBzAd
	 JhcAs8DKr1VsbTzQHGWaByLWqBBvFS+yVvhGOf69OJxBwuguafqrbBhlzfhbKwAcJ5
	 hV0Cf2SZNhnUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4B6EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 10:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169002192867.20126.6011748067620511809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b29f81c51badecf2532927813909fa6134f67340b53a787a3a02ba8a7e64d4
Date: Sat, 22 Jul 2023 10:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690021928
