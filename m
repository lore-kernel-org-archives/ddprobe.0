Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89E27B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B56FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670905887;
	bh=lPJwH3zCH1ynuwfNlXmoq3Uqwn1bRxdATJlXQ8OE2Lw=;
	h=To:Subject:From:Date:From;
	b=BFj9F3xiMY0s1EypZPhf6FYPTAE51i7BaD6wC1MA9mbWmnWJrb9EmC8ernxwgdGmo
	 tpTR3/xTpJu4TG6Ybse061jHPq5wQOIsz3mddwS+3ORWAWi6qqVtluLbESKSN0xgRB
	 Ix1G9AIrWHIGXA0vke52pCqrHijDiK7k3MHE6TX/aP4qFiKxXUi07MbjDL7oX/+Oum
	 ECskcLaXubGzZmrAKGcnuqF75g7LPan/BD6PxfgQC5UyxdC84y6epk9nd1H+eYc2AY
	 aOwywpTvD2gd2uNdu4WAMl5xxjyQsJCcvgnjOpv2OgSPB2OqpsW4VGZDdLoAWgOcYC
	 gwgBW2g6EJ/Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF89C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090588742.30144.13784204862287640743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971ea7859646c945d7040ca2e04401f2691b28e18ba3a3b10dd5bb6bbaad0174
Date: Tue, 13 Dec 2022 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670905887
