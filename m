Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615E28471
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 07:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDD4C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691134388;
	bh=IyyaywUCnFPhb45DRCB4GHRWVJHeMyYwwnYFkMH9wIo=;
	h=To:Subject:From:Date:From;
	b=jxDVSOwmb6qCdfWp2VVGMsnVyYtrk008GMfLQ2nU+vC/ipgN3Kwr3iQRUoOD0xgjq
	 2TcamDXS4wTg8/3Mo65RCU508xjfx+RHG88ubPCNzpkvghNfc9PtEm1igt1mqE39cB
	 rds6WdLtxpHgu7aCO62Cm0KUfbAqi/Ys6ia3CpK8t5LKqkEn7UUfgvxNa/AH6vlloK
	 hLwDC8oWqG8WMMMWZFFD7GzREZ+D8K8tkySnj5pRL3ZRyW6jywgT8oBjdh2C/XyX/s
	 9Stpr3mQ3auNryELGiYkbJMhkMRGx39xXsdkru/xn3Wk4R1Cqd2rau5Gi7BEkdFCYq
	 IUBKGJnRkGBlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC913C001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 07:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169113438876.21141.12262446287259811959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d7015f9619ecca0ef300bfbbe30e12ba9cfe5315bfb18f2017071e50c077d7
Date: Fri, 04 Aug 2023 07:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691134388
