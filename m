Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2970A3C
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DAAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673795487;
	bh=8guFEYEfpJ6Lyu0uNTierREB8ATfPjcmWGUg01uQtKQ=;
	h=To:Subject:From:Date:From;
	b=eLb3UA6NzskeBv8fyVdX99kqWEZQzmcr7TQsJfC7TYGwJVXyKKzLnq9C5DPTexDAJ
	 D3iblYo/LQcv0FAoua0Wbt59hNzddM8X0JAPtmMOJafCUqgH8/Bu59tPqfjgOE5jVP
	 r0QU8FEZwfo1J5Iv31N5XWkRcJtsji5r5OkzC3kUt+4qWILdNQ1yHFuBAYwZ3VaDqK
	 JEsEGDejWyIaVjd4OURYrYmA4MKw8PAVcwiyho3/1giHWtJNiE5Q0FLpF6NY6Y9rsP
	 CuxvqghscwSIE7oE2MEj8E19jy/arzdWhRV1/HdSbLMP7f3LWfZWquruodUi4Kw0vG
	 GJmGEf6ZHwGrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65CE6C63797
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167379548740.14612.17029182676820797375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfaafb3f639b4146797d8f468f634409dd005a2702a17d80a07bee431d5a74b3
Date: Sun, 15 Jan 2023 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673795487
