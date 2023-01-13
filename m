Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92D1320F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8527EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673642487;
	bh=MOnGqLyfKQ/8pvicucvWbRIwnQKJMiD0qNhc+GuAV8Q=;
	h=To:Subject:From:Date:From;
	b=I5b0VvPdiz5V2nTgVcR3oKQHRXav7bHqMw2poZ0r5WoSvfj6aYrWFixIz3FzQetSV
	 OLY+/bEJZxBjWv/kJI7q0y3trk+YyIx66ig4y84BQidQxJQLiRB4sEWJyxDmxB3gov
	 btKMZLeiMUBZU3WXkm3SGTGFjliHXefMfcpwJwbeT2I52cCeBCv9vz2kUFlR8H1IBZ
	 2RIh/WARqxKZto4mObvVrICMjabyoOVsiyTJThMsHUh8ZpTIp35NVii4yr9ljzKjua
	 qvdDw+SN44lzM0KHgcmmieK/dhGU357hg7SlTgdJw4IfROYn3nxGxYkcvR71zzfjum
	 QwAxO8sYs3l4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ABDAC3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364248742.3813.8078380346241984290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f59e7f9f3938814e2e15398335449a1beeccac74992c5f48138e3e34f26d142
Date: Fri, 13 Jan 2023 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673642487
