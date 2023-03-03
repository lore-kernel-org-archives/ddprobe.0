Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD1C1FDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 10:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B1AC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 10:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677840365;
	bh=9uxzAPvqOs7kE0/CXc/xvD8k1+nlFmsQY33OH5vKKKM=;
	h=To:Subject:From:Date:From;
	b=KEvgdUM7/TekaRO3AVxCZgcDALrUy2bvakePInu6cfz+08uWW0iyS+lwiT7BnVNyZ
	 v8vG9EwPh48IbRBukK0p6tB7WuyLNSiq5R4DjPeVeYiSz//NzZwrZzZTlQeh5aQfTw
	 UlyjNTvm8jVWP4scWwmyZD+3oXmbYTt4X5ssJhS/Oo4Kf/2C0WR0WdErscbcOPTKtG
	 i6RfxbRuGCG9YzQ14CJ6D+RS/EAZkUmsSCGgbLeNc77/wDPrT9qHbeAM6ZI4DcX04v
	 4F59r2uCz0Rcmba6WldE9I5LO9wyz3pVFFdwSz2gL/JNgJ5PqFQSLOMfCMzYgA25wW
	 AcFmqtesM9+jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0F3C678D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 10:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167784036575.22966.13783504117610793510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a1dc384fb0e30f22efc996180d3481b4d27b7bb399a8474df8223c3122adea
Date: Fri, 03 Mar 2023 10:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677840365
