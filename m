Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31B98C06
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C440C433F0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674078687;
	bh=A8iLMmpsj+pWVIviGC0ontDdUHiy3K/M8KEefOT3k2U=;
	h=To:Subject:From:Date:From;
	b=H3JTGJPBGp/T3fWV//IenG/lUoG44YEWdHjUbfCoOkBrB7toudgdPyuvcJvMZ66/0
	 +7AkLRaskc/k1HCT51l7Igg2jayEI1Y2czJYdM6tyHjahf21Ya2gRFKufKhhZjZGeZ
	 kTE9THk+6uNg3QK4oM4A5SLThka8L3jGV8puQLkvErxvFSh9RIeetwLgscEUqQiLps
	 emQyF3ArAPbXg2bGdb/hLiam3CYLI2rY/HlgUDG1AhgVYhBC7SaTu1NYpMFMN6huaE
	 y/+XIkRZPZWCcJcPpUJfn9vbGkK2i5D/RR5RUnnu10+E+/VSUNwf7xfAyjZ/IWpSYF
	 oCKwB1I8/iamA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AB9C38147
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167407868740.28060.8926708125573658162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046b8a8540dc8eec412afafb9e22986c4ebcc55a8db6983cf2b900d7c5da7d0e
Date: Wed, 18 Jan 2023 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674078687
