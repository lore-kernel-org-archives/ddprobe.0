Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BABA68F53
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B09C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668784854;
	bh=fjLuUbqzX7t+UB/aeZqc0OLHcMWo/P8Lmaaja5tZgXs=;
	h=To:Subject:From:Date:From;
	b=aKJV7K6pBLe/0hlf0RJfwMKNhN+GdRtAMHpW1SPDDHb78NAwuwxj645hcy1WlnPpJ
	 gPwls4jfh76BbjHo0oVkbLDrVH25RW0OHrr8M1KUEiPmsDkctZ05lfNkcAZyvOpnly
	 lhNVPzEm6Q09VQlZcVpEFu5/7TQUDgRA3m95d3pMUrL0IBDMEujoWns4HnEh+OQjGG
	 ccsu7yVfmrAnfrK0K0RnsnArCXBz4zL6HU7lB0PtiUzJOF8RxFr1A8ydPEdzJPV8zC
	 +fR2wKUF8NSClPK3mRc2Ra2eL45iwVE2AXT9cvGb5iaNURiKjPWoqVcov2iFniXPv4
	 6CZy6LPsT9tug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537BBC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878485433.1474.5126886228297925103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a28a53ed1452bf5581adeb19fd364a69fb30ffe66f4e55b4cfcff450d530ba
Date: Fri, 18 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668784854
