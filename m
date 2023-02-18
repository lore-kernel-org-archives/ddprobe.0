Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5532117
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 13:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 042CEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 13:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676726166;
	bh=pdKQpkKS4YonQ8WVqf7uHm6qdzlAYesaZ46OgbaG+8k=;
	h=To:Subject:From:Date:From;
	b=F0//lhqtVpKw63OfPl6jcUx/16E+sOcObqoC8/244jsmNrNtPnOm5bnHLNJ0Bcrr2
	 6HoGfpJENwbG7GW89JrlEJllzfRbIHEYMw4onvcjr2kLWAVMc/555de5Nc8T5T19N8
	 IEPkq87oAM/xd2UkSN+EHsTxHHVwECvtKSsySfhWcPVCBUUgZy58WLlKMUWCjuY/q3
	 bImjf2tbLW7ftEvZsYHTJsboZZBz55LYGMOD6f25LPcvDAtkK4uohlffFiuxG0F2+B
	 /tRo10XcFzubmj+NGE8LOLvaiWYPkc8nT9OMHBsz2Ps0kID9P15IH0Nj+yWqB5xXPq
	 bDfMBi+5wzUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D94FDC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 13:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167672616586.1063.5169201872000842823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5773549065c74f9fc5a4cc0b9414e732d8f6ae103d7f9bac8d79c68fe8f7bd
Date: Sat, 18 Feb 2023 13:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676726165
