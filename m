Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C467C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742CDC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661822452;
	bh=UgiGRoj4G7phDFrZmc0vkwH1oBo4RwPo/Wj659Q9Z1Q=;
	h=To:Subject:From:Date:From;
	b=TaXz6oxA1p2W5rlHbB1Wa014mCBwi+UfnsZZZHp7igxe2AWFW3zNQyO8i3ljCS9V0
	 e8iO1KF1joP/G8k7bykUeRNwJNxL084Vn4kSPUlEsGGChKUeJ7UajRujoeje1vFmf+
	 5cQBeaUeea0d84TH4/heyxkOkgN/kK2sFr60mMjD7+w2bnhDn6wFvS+XtugI82G33z
	 Clt8rNYhEbt2j6zAcMEFQiYCwKN+SFkwAuY2qZQaoiXadBiNC7BR+NkBkIo8DXFRiX
	 FFZUqB4WK6nt10IqmRo2jgFbAyvcF+n2VepPKF3fbTaLUQH9WDq34i/wWiDaLSSzw/
	 UfUdriW8TMzUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CD3ECAAD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182245233.5264.1441988430078333590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d988ce1869fea27fc94136b7142657cb230b956de8af8dabae25a61760985ab
Date: Tue, 30 Aug 2022 01:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661822452
