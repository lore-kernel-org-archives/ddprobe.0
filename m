Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD24C17C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B46C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674187287;
	bh=5JljIBYk0NCFrENH9h/q0orRW6clvxrj3D80QYWud0w=;
	h=To:Subject:From:Date:From;
	b=i7ffaGacROK4sScFyl58ykN82hVDrZKr3nLFPW2WTzhldQok5Rx46YgUwFpO303aV
	 D21IkLR3PIrwhIHwC+mibt7sQFEo+MqY/SXw0pHJpZjDQOmEhnyEyfw/d6qLJKXAKw
	 qsL5zhJ+2d9Xf8s3+UkHE5uoorls0XZez+WriRegA1mXh14ivKmzcrIdEE2FkXvxpe
	 YBla52T8Lj82EUG5k93rS1W4GYX5ZrNnlyRIs/PZZmurvgmQr2XJJs3cUD7tfgriiP
	 LJENGev4P1W83ZQ3hJbUN4j7QQHFlH4LqxXq4y3Lm+gmca4gjW6ulpZuDJYwVpjR8w
	 0nKlQS9GEcenA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D01C38159
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418728740.6754.7924124414530346301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645fe466cc97e01f5044b0e2ea650ea6e7601ac7f42740e79aec8a2b4ae5d20f
Date: Fri, 20 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674187287
