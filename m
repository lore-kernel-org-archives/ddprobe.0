Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715A217EF
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 03:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3434C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 03:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693626848;
	bh=KxRec14vcHm3hxSVM89sYOrNktW3RgRK0faC+qBU1PU=;
	h=To:Subject:From:Date:From;
	b=Bc0Y6RQU3VmY7MU8DedTiR3bow11L6Gs2q1dzKpwzPG6ddxyj9OwHNAtdIFn6EnpC
	 fDoEKJyW1/Z4x4N63GfESI3ZI3Qt9S2hIxUAOj0Ua+vztqlD6uB7gX37CyYP+cfE1y
	 5RO0HDHwu+q8B5bjg/c4ZKOgdBAYB8bI6LDS8H0vuLIZQJrM+t8wRk4mG9j9yDbehh
	 GAbR+e9fNKidWC3SqbbxOPzRje0mWVnrcaML4O/sQuQQANdrkwcMecctCZGaUNCOGY
	 njgAw/otkTxdtqt56WViI1XsG3VgSdwJ5yS+T4okaa0erk9rmCoP8PjFPULN1QKKa+
	 ieBVIPXGGOeYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0949CA0FF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 03:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169362684869.12796.2692898171239073270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76980833153f98fd84e6ab76e179d7df2ff41d91b6ecdfe6b1afe321bb4bd9cb
Date: Sat, 02 Sep 2023 03:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693626848
