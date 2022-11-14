Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83F32F21
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD4CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668432654;
	bh=12pmS/9eZJyEzVfadm4VAzM5ot30yNOrdEmQ3qX+M3w=;
	h=To:Subject:From:Date:From;
	b=ZU0+L46cpm68BHC0D9zPFJXUKh6qQ6GuV7z2u1Ey2DnzhbN1T3WFfYYzZChhBteSX
	 zqtU9TuZwRybo3EdhhqshrqyiUrgkar+BRcK9MKC1zRbyLipyhGGJjLMzIA8G1V6zp
	 OUoCdoIOknQ2I2g9vL9y4pdaifsTM7U2pxrVEwU0lJYk1ykTfm9zmKsCsoonZVYlS6
	 nves0QsI4/pmhGuvPLUZYKtEoaua1d42RytUsQOfWKz0PfbkjO2PwdCTvl6Knw1PYF
	 KxlbK1w0MqtgLzkJ4dWaYeKwBD0ClwUxECbMFoSLVLzLysE9Gjlh1gZlcMMIHMB303
	 EYrQraTKpJ7RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527A7C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843265433.22488.8914391939723995611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ab0ae157336c7a50cf46048f080493866583441168c0275b5fdb2fa0a34a20
Date: Mon, 14 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668432654
