Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63DC10796
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 12:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89E5C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688129588;
	bh=nWcJL/B0CjzpPqFvEXZW7zKUMPTPRh+3ucVSU42KZeA=;
	h=To:Subject:From:Date:From;
	b=riqDkb3jJBl/oy4KHXdObCW6p2q4QPTh6sDyUSRl4kGV8mkcZw3YBHBVX0Mueezos
	 j9GV5f6dKW/o/j6zzhoLfUiLtvzzPedeENpWBXn9s2Vop6Dmd1bWtmTl0ide1WYTbc
	 0sH3Xfw1hMeGUKxH7WK6Q36/6L4Gw0bOzQrE3b/ECT9Vsz/HflqRATSjieYVtYO5Tj
	 6L7QOM2je72BZ1AhSAtophzXQPqZUlFNg41mQyztOvG5Q7960wJVWaGwUt2snSSaZW
	 FOvAWjlB8l2vceIa8athNUQAft8BKF00dx49VHSS/A6d49F4IAi7yzycc2hjNoQiXu
	 m5Pc9Gis1ZjHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BAEEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 12:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168812958867.15374.8404836617868288297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd78e45aec9ee854e4324d5e6d9129c8da9b20813e9aabe4dc5fd8027b93f7a
Date: Fri, 30 Jun 2023 12:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688129588
