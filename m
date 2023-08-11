Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1AB8833
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 22:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9D2C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 22:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691791388;
	bh=JLmbdx3sHRoXksyajkBWUJdn/5TQ0Ii+eC3TwU4ruLo=;
	h=To:Subject:From:Date:From;
	b=BJuqoMFlkxs/Qv/+tolmE4kDRs05TEs42PLxVvl1xhxliqkrjJI2aU5SkSUcp81dg
	 EmUlnByR4imy9rnPBtKUBtQIeIDC+mCZj6pkYA2eHP/OQ8kcO+9ytf5TRfbG3BAEAk
	 vDljINPPzYApH0J8aQdQQtHJHFkBPY4/OEXv4KczaTcy1P9W+Oh+IMVGdrWn+dY4Eu
	 U7sazis14WPWJy/rl3ScLZUQsFiYu6voinLf/TAt4xkW05rAUdmEKPXZOihsuAZHfP
	 6M3ruGHTF4MQPYAnrePvivWqhm5lZ5eF6MJZrshHkbmx9uQLcUS2hGHqc+OWpSZdyJ
	 AwcOcBNAPYJvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD429C001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 22:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169179138868.22982.9807177790490987666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8694c1cee276ddcf485d86ba02337c58ad42cbba159827978cbfcc04f290be2
Date: Fri, 11 Aug 2023 22:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691791388
