Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E235386
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F82C433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666131053;
	bh=II1qOWiS6DwE58LOJ/KLk17yfSZYQ5Wb6pZqwRfYyUo=;
	h=To:Subject:From:Date:From;
	b=L+i/ze6c+Led7S4TwuqubpyDWTlkK1l8+k/xI/wRIOV/VYv8c314xU6pM3SBGggmF
	 uy7cuBJDNs2ap9ZrkhHhy8JKxXuIoU+EnKvShnEqPU3nQRb1o7YgfmMomVt0leaR+S
	 NeolZrCHFVLUttJLT0KssjhyvMbmGuanP86NCU8AchIsEJ+q9TR9PIiPtZOyleD8iy
	 +4DrqKsji+feW9RFXxbXEbaUOqcj04rtjwQyZzxt/RygSYTFNnCjcfZxaQT50dCfxp
	 uZNJXna2vGESS8vUCkP54+Daq2XLybA4Po92v2t0seW46NiKKGkSKFN4LkDvdwN8Yo
	 KvgkAyTaV3CDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569C9C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166613105333.14262.16322972544292577693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77cb43c9c1b3bae03ff77e499b097040d48440c4d82474b3e36d1a7e2baf3f3a
Date: Tue, 18 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666131053
