Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA64EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 720C6C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662811253;
	bh=ltckP68NNwu0MUV5/z9M2EfI/T9TLzlzUvIoVi2b4IQ=;
	h=To:Subject:From:Date:From;
	b=MmIqJnfJ0XJ7Xq6FGmzI5P7u4RImtsFG30PRR1CbQlOFr4BW4qqZlob8ng0bJorYF
	 FizZ75OemAiAXxN10djJPq4tWBcWq91xKOYEOGoACOWip46OOm1Icdil97/X9bnd1K
	 4D7QLcB5jXPRtCzuxIWpe+G7OFMKq8M2/Prnk7c4C/j5z2Ayui5iEih3XKOM7LgqQe
	 ipBxbU5+pklRXgJnEt7vKLRTgcV2XcRgPo2l8cbXGTw/Hkf3NewpBOnZ9rjX6dagJ2
	 9mVYT0y+Iiby/rgfc5lL5qc3vkfVE05oaFXtQuG6pZsZsYObcfi6PMaeyhvwObnbm4
	 h3xn5vv16VPtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5789FECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166281125332.17717.10822078020119933222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abaed5f41e4df9c46fa85bfa8a91fa6dfe567af5703aad410ae3b1d273e1ff03
Date: Sat, 10 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662811253
