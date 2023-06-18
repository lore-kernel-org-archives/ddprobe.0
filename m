Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3501B3D74
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 19:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3219C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 19:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687116008;
	bh=cG325IDJqkwzTq2zq5kTJxSF32HJmgcPgHpRQiK9V9Y=;
	h=To:Subject:From:Date:From;
	b=UEy4/pabEdWv2tjlBxHQcIpXRaA5BNJx3ivEVhwttZAgW/UV8/G0ILpKo1lNTzEPI
	 79HdrCrPd1k8Y5DWXVrBLMSabnweO7+8Ij0b944BUvrIrCPNZcPXzLlJojOGDMhtcw
	 0RbNDqnhy4I4v2q/Y96/x+swRgr9qH0SspleMYC7CkKVEYXkb4IKto+Le0rqVyLOwG
	 nTOnRZ6GCzLveI8wUCLwqgyPga0P+uqXg3fsqzo+QBELdhH/4mG1jed0Cq8AupXNpU
	 iLQYfS/ut7DeZ9tvG3Or/JKKfdPJuGnv/gTo66VMJS7QV3zM5600r78rj+PC8NH2Ur
	 odmjp2RBM9vzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6457EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 19:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168711600867.14763.14069949719873659998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50129bc3ca77257a14a642bdaae253939cf8c00165f1703ca60c907bfd7cd927
Date: Sun, 18 Jun 2023 19:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687116008
