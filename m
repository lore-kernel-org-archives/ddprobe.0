Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA6C7FE
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F7CCC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662784853;
	bh=5KxjMiiBYWNpBN9d9GoGep2uTcw4EoCPH/NANarBg7M=;
	h=To:Subject:From:Date:From;
	b=UIfl8bko6VStkwqCbySxNl/9Py1wamtoaCcobaO+lEOiyh1YDTb5mj3ZrDmucyI7V
	 vLPPc9bj2BpcwXHBVsfFHWt0TmzvnHubnm+ndO5gtb0olO4QHYlAodDYsbdEFk3LzV
	 D4PPAHmomKTdoYhEYUITCCb/PARvJ8GyfVoCVMizZJPq/LbwZ75zHboBkmC7MPJcBe
	 +IPH+cUCudbq3XBT6QG2bAqxEemA+XexAKpKjnrzfWAeTZfwSHi84JFMdGFT9SZNRs
	 Q6PXrToYj/9XFuyL2wDZqORomwf8h8Biu8tyTl17sts6k5bgOK7t0qgZSK0lYuCWYf
	 IaC8mL1y2wUDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53243ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166278485332.25538.16121668782637928672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b00a814c5ea7442f73728cb00fdcad1e9dc20f6353a0ecb261eaf4e501a131e
Date: Sat, 10 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662784853
