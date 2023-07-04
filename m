Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E590468B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1FECC43395
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688459769;
	bh=28Ejx+MmNRkqbcB08RBF8+jceGdASkQZTDNvhK5VbFY=;
	h=To:Subject:From:Date:From;
	b=Batsa/MDz2SdPN44malSUbZbuOzbsdJHyqoYg04tJj17kEpMoKdyi7XUmMxk4ykjG
	 XHf3QOIHnBsSaYucqPY0rohlE+ED+edOWaq18FHv/nhxOUsX7CteP0BtwbluYkyfIU
	 xJp+t4olksGIcErmK7MrLgyg2KTGGhocLWkWu2aEOUqhB5ts9mFoJVeVsYGkP0ObSL
	 WBwBxGEsdCXk7cTGDuXNvpQ4rLfPNXLxLd7X9NNc1EmM8MyS7Gfmh5VLGWDMt8eyyl
	 iozauo+x9uIclthfbCYzQH0I6AJ8XvLJ/mVl+ZJQLDjPhpOkquqeBHiTSkpjLMKlme
	 MnlsDI6MZXeTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47B3EB64DA
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168845976879.10072.13301629463994446774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12db09e8fce6321c3c0a4c007b31e72cbdae903a650a0fa117f2cde76aea02d6
Date: Tue, 04 Jul 2023 08:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688459768
