Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08007B
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7453EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668247854;
	bh=0dQKOsLmVtxU6SCdyQ7wvafG8unCLcYRTF9xuzrXEuw=;
	h=To:Subject:From:Date:From;
	b=eau0WUN0tWd3Dvk58NvrQyPBEcKfg+SFl3IqxuXxOPg4QY7Fm+cRtjH5fiUDNLpbc
	 uaUnc72oKsRcbOrIjxQyYKAL19OxC2uqyOscX+OvLXPH0EIaEXezDf/HiBTSPiQ/as
	 kaa/IzvzgYvRAw4ZYIA8rOc72difbbPZj+nQn2xBW/tOmwxLsn+oDIqGm3NFGLBYHZ
	 tEECLthM0HsyEf0VDjNXzAGTx0TJD3ptW1TGNoV3O+NfJnP6jZnhCzcblhYdPn6JrD
	 OkortSpVyHYkPRg5KBpTkxTyhFeOyGJZvpfso85L3qjEmV9pVtX8xJ7qYSVzFdBZFE
	 orZZswqGpuwNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD8DC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166824785436.24915.15619472706742943741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70298ae3304e39a285406faed41e8aa45f408853c46a576a3dc0bd70e6eb6b33
Date: Sat, 12 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668247854
