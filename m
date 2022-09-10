Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7017FD
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761A0C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662791453;
	bh=9vuTluJEXT8xGX7XVwy8mZywLDr8/UdgD8klaUroUOI=;
	h=To:Subject:From:Date:From;
	b=Cbeez4Cqx5ZbxFQmh1xdRQ/zFRGNzODdHeq+x4kGHU1WjV1olQbEvtZ2XzbYFgFv8
	 GGBzx58D/fvMdMzS6y0o6XvndInEzqBZlvcisBHbXC5qIKd/Bk31EX+T2ZLtKdw6yV
	 TI6T88mBik7zu+HX5B2T/P1xhj8Dmr3qNc6QzeehiG6Hit5MnLaJVRp6ro7r9XgsxM
	 +N9xvgtgoH6+mGwmcAKRqMUCXqn8+k21FPZFCrfCLyDpiQheBSFa4mYp5+Y8OIiJOG
	 kQMs0okdd5zQxJuN+kf2UfwdYJhN6i9zWXWyj5AIPEtN8mwGm83i3YiBT0yVsG5vzD
	 s2pXmjJruHXrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE03C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166279145338.643.4460287151758580591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff49c202830b1f06993743f0f9c7a957f7859f55f31f8b6cdf5043cdf60a25d7
Date: Sat, 10 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662791453
