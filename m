Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1EA1EBE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6867AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669808454;
	bh=13rV8nwk56bLF+y35SYzr7yNISvZWpRXXAHCHm5otsA=;
	h=To:Subject:From:Date:From;
	b=PhLrN8J4un43A9DBHx394+Pb4CZqsxNpe1XNQyIF/7hVFgOHLiIT4uTxhM0m9PEcb
	 fK03Sq2o17RJn40wVdJ1LPzC1/2gMSZ0500EMWVpxkKtlXpTtcCGrLScpbP6sIpY+v
	 FcWUclTgK1OuxV7zBugt+Mz1ZH2FRE3HQ2VBaPFweFsxD7wU5fEXHn3MFTaiDcweKl
	 /MiVeLqzpC8PE901aMqiR9u8Wu2GI+5NbqZy97B6aiDwgh3OLA77MivUWbVburamB5
	 DQMnMAviswIHIoe3lLD0bt3WGG6CCNXrMWc/meAAd7pS7IzNk6wPyvf7sa7J1CsVD/
	 EmosOlkBlYiGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AC3C352A1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166980845433.8366.13099595551485202045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402dd0b5af2f047432ee6f878d45001a645c9327242bece6a7bb3032f3336239
Date: Wed, 30 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669808454
