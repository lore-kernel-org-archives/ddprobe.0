Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E96EA5C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F4F3C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673052087;
	bh=7zkzaaqZrexsoNuS9hR4Ss3G5yRkc2PLKbopBkWluOA=;
	h=To:Subject:From:Date:From;
	b=KQZW2ZXMGnarYHR2I85BgQeo4LIPsiN/C1yj0dMleewm2KRa5lik+6HA24N/cMRXI
	 Yl2jl3m0DqnV3HfLydpHGwc9vlINggCOC/r0SucnQsaTRI60djdaZwtCG+hcrBmQMT
	 E7hyHNvBu6fdjnQD2JlKBmJro4PQbbTpi/TRvLnm5pTMdN2YBN6HFjz0pPUHimGeyz
	 mqiaTBqmIfPW60OlIdqLgCLZgz6/9dPEUEaob18SFfN4BGflPB43JrxqB3jxvb+bh7
	 vHC7kEvOJvKe1lIGIU0IqEzugv+m528zxkok82kwnM+AkXkPQBNQBQIVovDzHfC2lz
	 q6Gr34V6LceaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71CB1C5479D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167305208744.8200.13412709366745794932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03a6fcba0369b33b941118488203a37fa982b260c71062ac03ba70dd076d46c
Date: Sat, 07 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673052087
