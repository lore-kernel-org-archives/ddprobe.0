Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DB010E8
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 18:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCFAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 18:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685299745;
	bh=C9eBmTJ4ngtUPSyYTGHYXwE9prEeyDM/A9rny1apmLA=;
	h=To:Subject:From:Date:From;
	b=NNOtsHV7nGttc1R2rCQ5Zm9d8ARXlVr3oeXPXrdCx6SWojdEOzEMDDF+DYALCsO8d
	 NKwNizybCM/InXzWwYYCkb6TZEESZu9ApzUBApT4Dz8Bqlo2F3loYuIvSpRz2Qbn6V
	 5msG77i7pqDfeFajnVc4PYHMBxxDSAbp2/bT6URvEvbPqPo1IvXFv9KJgZNjWpQuL2
	 TEA1DAWz4sfVfuorKpMcrSPCcJf06uR3b0w5LIow1sAyh6t5Qe030Fnf0PDMKbMvNV
	 QiEJy+D1Cko0UuO56kWFggSceEaPY5t4ZUU6U819XOqQy43x34pSwKO5Gl/ERKYJpk
	 IOx7R82rCVLpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF526C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 18:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168529974577.5011.14431636421066339433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96261ed5211ee7497646e20703758329954d007f950fa881cac74539d8f8837a
Date: Sun, 28 May 2023 18:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685299745
