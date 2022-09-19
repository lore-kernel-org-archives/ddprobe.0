Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B017E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AACBC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663551653;
	bh=b1tFYr3jupg+02akAsMc5SxZgFH4y+AR/6/CeTf5kHs=;
	h=To:Subject:From:Date:From;
	b=XfT2MsYaMsPzq9ylH837X42YGmWIiYkwsXjSQy2ZgUjVkv2j++Lx0nDcA2iFEfNEP
	 BZmtqTSbJoofD/wXYuy7wOjKxPAsyTOWUTeYXdihEW9ZB4qpcg0s7umQ1HzObDWG9D
	 mKqF8S4P+Qs1OiQ9mLtTfC6M3Nqle4AEg+IbPZLCTEGQdCcg4Ufb6/fGeuo6Jx7ObL
	 We/zTsGnln11dO70ziYCsuKHzTIUCEvQJgf4mjumx8Z2iSmPlTYpU0rGa3wlaUhSYE
	 heLGDl36SvPD/jgZcjJAGAZTenUY8cKrET6xkGO6wQ3YL/E0QMpqNshi7K7qs9AuPp
	 hRlJhiMZPrExw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59921ECAAD8
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166355165334.7807.8927179545037222489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b9c44de1a2e7a007021028f5469246c7250dfaf11430b9a0c1b11619098895
Date: Mon, 19 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663551653
