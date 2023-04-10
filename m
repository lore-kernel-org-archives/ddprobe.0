Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AC5257C
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 08:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2701C433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681114925;
	bh=NR5tsv0OYBbiUH4a8BiZPUlLlHQtyr0Xx+ccqWr8pt0=;
	h=To:Subject:From:Date:From;
	b=WtrF2GwZFKenWP6GplRbCDudN3i7KFK4fmjvix4J6eNKazy+EjVsZQiMnx2RR/IQi
	 Yxel9ZX1heWpF0UE3ytcPG5i5Svqcsu0SwCzjAa3C+cJvMM5pmrZ93MKsnroyEmeeb
	 TpmPjOxG0cGju6h+BHJGT6qmTib6nFp3iy1OlAPfE9r0k8c7dff8dDO2cw+NIT4+Mi
	 4EoDyTTwBhARNgyRtVyt20nw7+uenM0xGN7jzgMko7bpTD1HsaZPOR4XdODwsAR1Cl
	 W2slxfUVVKObkj7lKPk7oeFPAAbglFnE2Iebv/MTm9c2eKlDUSJy/LpCxKPhYVEDlm
	 6Bt9znjsSTziA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6259C76196
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 08:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168111492573.25797.2652849960684953002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39249a4400de693dc59541e096ad51af928a792184dce607d2940c1da7876bba
Date: Mon, 10 Apr 2023 08:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681114925
