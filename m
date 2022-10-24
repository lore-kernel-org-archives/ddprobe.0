Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B874D6D17
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7143CC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666646453;
	bh=E479CDsmOameJ680oZVbu08zykV2DlcMgez5gaYiBoo=;
	h=To:Subject:From:Date:From;
	b=mUzX37K37zC35bg6kulMFKGrgblfufF4XoaHrbV8mgOD+vdG2bcLcD5kuORtSNQif
	 Cm3C257gVOLpVjv0EavWrIMM7NuiqMMoKONm8ToX42rFNdhPvqyt8tPW047PJntbGc
	 FVJ79m/9ZxO12Z+OyoBUUiLM/PRe5aW09ZSVNvHwyu9NgRllRoS2/TDWd4uSiok+97
	 PELJLJ007zTwpyVTtoBLA3Mmsa2Ez7NpMVpn+mi8REeOxb3vnzDhp1KgJAVO0b4/Kn
	 /b73v8YcUMzDurXLp4jgwEektWi3yXAwnamyNilNg9ZbHLfanXT/ThTF3JYU91uf+X
	 ByB6zJxgZXi8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54236C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166664645333.25592.12950096243877465367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54200d4230d9ffe248bf8a8e4cf4f3e25e43744b9740311bf2fd50652f56b81
Date: Mon, 24 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666646453
