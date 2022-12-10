Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CCB1109
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C5E7C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670669487;
	bh=aD/vrEKVDks31xYe2kCgJPCIZPiG7YAU1GX9aoEmzgU=;
	h=To:Subject:From:Date:From;
	b=aVWL+kx7iEF6f/u4j93WHku0wNCx3pLZBZ3RDP5P88bmS3TQYANl1S2OsuuU8imyT
	 HXDFtQrRizP2j1cLgULTtARSvIuvR84gPkiPwn1b/EsYINT2Ud5egJyP0a3A1suzTR
	 HbEFXbe31U9HGPyH3j2iLZm1wnYb5u+c3AdCPntNeYq39tBHtYxigh6mSlZWLmNwhh
	 cQ3W6bHH/qoTK9h/2OxaNafSdFj4ofZ5WD9lWe7XOwzhDCtODcc6lf4v3Z6dNkHxmz
	 6+gbrJZOUaTkaw5wM8FMt5V/Y7SRPCYKSa4gwiM0lk1QVJtXGWXGoQBVgCchHru6y3
	 9UiMQVkFa4Jsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CFAC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066948739.15270.7032823483024616558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32561a0bb792e1aad2f840defe6ee18a45ccbf166817e4ff9125c7dfb2adbd50
Date: Sat, 10 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670669487
