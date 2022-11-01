Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FAF322B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3D2C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667321454;
	bh=axRf8sslYO8T/syijZ14zlJJdXvNE35DWzfWP0c4uP0=;
	h=To:Subject:From:Date:From;
	b=Z8nrc5kiGZIXkAoFaasfp44jgYhpEeF94MiSdCkGIR/hRKvf+BxCIWGFfGFZfL4Za
	 2mB/rkQgGOXI7RIVznUM9eVvwHKqCPWYLv++ULpjiSFAkdny27qz1uGu+CEUX9wS2q
	 FQb3Hziym8gowhU4AI2HDtOiPN2axLco0rrTDYIiSN3ekPV4p555HGkrfjDo5hhN5U
	 KOCLn7k53GzxOhJwGFdUl7NkDaevKMF43OYgcSvHiJlc2U6vl4tpord9pgKBwDKz5V
	 kCzwEUz9aT9nzi/4z5UJd8ZlZW/G6mvpzpZ6VUiXgErWbRe+Vc54eHAqo/+ZDxR+OB
	 R1gFu5T+AvBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533FDC433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166732145433.3755.8143502825740731547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8c2f1f8f815a27aac9f6959249e32d3ed43de243da3b75ad6af3cd2499ba0e
Date: Tue, 01 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667321454
