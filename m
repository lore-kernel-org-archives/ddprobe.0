Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B951E2F47
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70943C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670196054;
	bh=hfR/Ugadg/Zw+heTy7ggsgwbDrVptT7fREq7AkI5FQo=;
	h=To:Subject:From:Date:From;
	b=DZHsmcxHvmPKduXVs/2/MGzMy82zRzZKyz+1d0K6vmYLiVrVBspNKEWdw3kLuqWuN
	 6MrAjarGQtj8oDEzLwwnbDD4ARaI9oBrEtfkfMnwDu4GgcDEJeJKdZbcGtfm5dnA9r
	 oOwD/lDG5w++BCXWwFufKJyCeWopcRw20O+FbAVgihiACHeQ75H8NkfF7UtfQPkd0F
	 9YS4RokWDk7JEtRS2LOOeyZ9ZeUEExMhExEDLlgxgY6lUodZI3Ie3IM+Ud84ys5xCZ
	 lWCiZg+93AksiDemIcZ5pNF27PDHD0wmRv6MnYSzR/0D4eru0JvU8Tf5ZaeTlBGYSx
	 Cmo+dT923aicA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E75FC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167019605431.16646.18108164595313216632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b994e2818f964ebba75e7ba59cf71f94d03f52e7f6347c8567e6c53af1f04e
Date: Sun, 04 Dec 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670196054
