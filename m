Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590C862D
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 04:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3F6C433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 04:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690776728;
	bh=0hf1DmIATWZjglXuA3XDybksr2ZYLrL3PelIN85NBuI=;
	h=To:Subject:From:Date:From;
	b=t2L6bOZ3JiSUumK6rmNoGbQdxrjoAFMUwzy/mANqz49ANLKhtXucN8IJHT3jvpMMn
	 OCzfbS8V7HH6PV9cM2FE3JnIPWJNsEsY1m5xFggx/kudX7kRraMhh0HVGCq2NRQ8Av
	 FdCXKsI0kPf0Bcz4utbBbuqMI5ri/ZOrk0dbPuDzGNnmOeeDY1V3f71GpfT6fzuy2D
	 1jzuwDoKUQ54neqUJrShuDuH/958DgW6GteOqVuOtGUdSP8wbTFFJKe1HVoJhzqnr2
	 n6DSy69KNDnQDsYBxJ5TuU8mPjX5irD0otSZktCrqQF4cP28MTMfIe5+wos6MhHy9T
	 8c/tfy1OmvQzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1E1C00528
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 04:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169077672869.12103.14162710169168469530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3db947d3ea3f786aa4d11e5a5c3ff2757b1f90a30b1103d015b1ed11f32ecbd
Date: Mon, 31 Jul 2023 04:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690776728
