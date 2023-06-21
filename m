Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923C4882A
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 02:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C740CC433C9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 02:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687314788;
	bh=jvliwRNgyvGCVAoc2CPxrMgMtGT0ESZm2PzFWvFxUfI=;
	h=To:Subject:From:Date:From;
	b=ZRQyUQLMDrx/ny+WfdtNqjn1buurW057uKGSdt2DOj+oRnCcn2S2JQkWFg35PLxo2
	 qY9IpgJbrMDFEIipRPdeYwklhSLm29pJV9a8/lqHD4kzshS/+HMQpqnmBATv6Zz11O
	 KGQ8zL3XfkLkInfIVgsb1QNlJC5WxB77DOvve8nPOpILXAgQY98Xz/OFDDTWDMAgiS
	 wGrwfaBpAhT3Wk6hy6w8GlySKzmyAddOFEPEF9nY+QJoSnGXTWpZm3BgdlQOkiiaqe
	 eqAQJlp+0hdXrMMDd4Oiz5ry0iGehTtdWbglJZWO/g1rfxo6cL/OhemETPIp5owuTQ
	 MpS3GuZwFzHmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8310EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 02:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168731478868.23817.16396136754623647904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43afcfb9689ec37c9ec70e2a3df3dfae6c6baeaa54fde43d321c9db7202587df
Date: Wed, 21 Jun 2023 02:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687314788
