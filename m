Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FDF15A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 01:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FD63C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 01:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674781386;
	bh=ShblphcbZM8OH+OcyEKUEPyyG70qSHrXl3VzzeruTb8=;
	h=To:Subject:From:Date:From;
	b=oQ04HwFtSFUr0m5xiM7jj6bzlxofn1Bks/yeYAjhXNF5I+NC7RPT557//+YEFmmrm
	 dNluOE2/3tG/4Ov4kWphYQ1rjFdDjO0I+CiYZ1rCuanfGSM6B35eUdLn+PDiax5fhI
	 5/hAlA3f4SVSvsWMOzFQjAa/Sc0njE4IIS4+P7JRrJwCHYMpgQwv1xvwGSVMLEbL8D
	 s36hDxv+H/CfLXhpzcWphMr4kciJNn3OhO2RLlJLk/HdZ7o54EUST2GBx6qAzNwnKj
	 bukHHqGOmcnk2YcirrvqzNuHhq5tGxZq7/eycZ135CAXQXaTwvA4uW1eTSCdTwMvys
	 PWYEmnhyCdLhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E89DFC05027
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 01:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167478138592.22075.7554972309391164181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d894b2e339e42995498cc9129007b34e741bb7067b1336658f2989b60ab27a35
Date: Fri, 27 Jan 2023 01:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674781385
