Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B2110EE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80BEC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687993388;
	bh=Us6Ko77kf4RxiAfDECqIWt1Rtkuap/Oa7NOyT5yBBVI=;
	h=To:Subject:From:Date:From;
	b=KSYit9Gjq/WF+EfkHNhtXbTI6u9OlFUZBth+71iW5hbxhxjIVH7+mrsMiagU3dkM7
	 tn5KKThUmcmwR6ERYTRvOdi0u9CUUFRtubSpV4mXw5zkf95BkM6zrUtHIKq/UuvEWn
	 YUK2dtwK6687OdRE6rF8E2D4NU6i8kTWXlyvTXe4AcarYjPrPR3pvpDamPii0AZVdZ
	 rw93g2wXTXtR6DWgh0QobSm1Hfoz8JSMyLwwCbPio6KeT1aOafCrsMYXkniDhzvMmt
	 lCjw7mSA11xi8IJ2M/4YEn3e/mM5tWBoYLKUiRtZ3XsGL32HoeqmOdviO65fhdrnl1
	 a4cNbhFedpE7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D8EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168799338870.13106.4250327443996815481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621144a20cd0876a8915037bc283d6297e68e622b61e7e56b049d41db7b7cdda
Date: Wed, 28 Jun 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687993388
