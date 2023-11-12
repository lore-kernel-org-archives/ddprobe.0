Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F381BDC4
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/iCL61O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F78AC433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699833496;
	bh=JMxzsWTsnb/E6Hn+31cN15clA+FVfi06Glf/Npj9cBA=;
	h=To:Subject:From:Date:From;
	b=p/iCL61Om8bxh788kwyptuUQXkttm7ZIurdN+GBGNVieOiRaV0APbPUBSGUVLvxEQ
	 wb+RRQnufYL4TjifQkJsn3KMdZF8YFh0Y9oxq494qA2W4GS/xg7/wO419M83L3dfyf
	 9E852U+tUY9YBiGj/GCZMeSGH0g8Dp8FY/ZpQVZTV8vTmycUmYsV7bVcI8d7JFDMB8
	 2jemIAG1UJ0XMReJxwBsFo0xTbd3r1wdYqLBtdpt6w09p6G7jcPFanomcUYv/YvMkm
	 5t6pAJIudG4fkpabMaHHR+b7WQOyzQm2t6nEgBJn8B63nfePMBk+EA8SVU+0u3nXDq
	 uVgved7I8AlrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 728C6C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169983349643.9051.12274904074493274686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe95b63a65c754c0928b0b5ac63bf12ec8498f66a1c1202d61a37a0754329e8
Date: Sun, 12 Nov 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699833496
