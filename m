Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5195B2597
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 00:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17FAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 00:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690590728;
	bh=HcuaZ6fFOsGIwPtYEnEooc1jKKZfCxxp4evmHMmEpM0=;
	h=To:Subject:From:Date:From;
	b=HAUAoFLd43K3+sVsHXVYucnUA4XBAOd6OCQJFfPWJdR5mxHzcdv0NAyi2Er/wzufI
	 yc2RZ4/F8wL17mzClWsypwEHA/YqCt/G3PewZ8SCvhb3i1Wc4KjJSHnX/3EmbPJNZL
	 OgbQmD7FoORKnh2dfAW8JrgbBiJhr61geROPABd0q0KBMxmWrzRyWBXo8OiMe728x9
	 yX4oRDtrcoTOyotAYAVAsSQQEigvSuD+0BF3pZTMkhwMy6nSpFxjaxm1TAeEC2qVEM
	 +2L+R4xXsUNTOnJPWSFI1wztuqQswOSNtcoMCzKTJ730FRvzwA4/fvyeyFvHS33Wbt
	 f1VtZcOmx9E+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A669DC001DE
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 00:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169059072867.13223.9671806763389558179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a65a9469e4bb411f2d88a0e222dedd413f2425f455b7dfee47178483e07b1b6
Date: Sat, 29 Jul 2023 00:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690590728
