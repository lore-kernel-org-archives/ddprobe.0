Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A6523BD
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8179AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670843487;
	bh=zq/L+nuWOyZLiGFwJTTSgaKvPP10Hoss+CvDeeY7Cf0=;
	h=To:Subject:From:Date:From;
	b=VBWzZvv/ew1quclFghTQj7kY1fw2DxWlNmCF/FG6pGbqGnJukS+tEl0O1a/lSqTMh
	 alO25l++pawQbW6WXKdsm4tegQyKDLu/FyKV/XxUrx/C+JykyFbNDJtWigqWpdY9az
	 qEYJCYI4/aNvefMFR2YKdL9Nsz/UIFvdVLd99x16xfL/NwLXZoBGnqEnaxVLP/T+5k
	 zDFScGKfl6p1zTpnaQY/Q9fX8icZYUC2+eNrsW5JbO3tgxu6+Vb1Mf/wY3ivzBdibJ
	 lUr5CUK2pSRRaLOv3j3yEQtulEOqme1oHYifxhp0E10OkLJ160i8T1R7cJeYLLB8Ad
	 0vvXCV6t1bOZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645BDC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084348740.13794.8357021849402856766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aab13eba70bfde57e44b5649dd6abe360cf2382aa806ba268321d073f45ef7e
Date: Mon, 12 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670843487
