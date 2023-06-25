Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A8F1879
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 13:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31B7C43397
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 13:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687698788;
	bh=yS3TN0WMc4iDU/l4PhEJHMkNZspjqcl7ixb9OfAlNwc=;
	h=To:Subject:From:Date:From;
	b=M4wttbINU2YmCmIBxlH3EoyVFuq7TS3cMRtAy2ppErsDedZWswFHqr8hy4YFqlywk
	 xRDEsH4k1DW0Vsu8uFk5uPWpmrV6Q/Qd5Zr6L7WSbXE71BORfWh3+AVDnIADHZ+PWb
	 KTn1Y3aDq4Mo/ie7KRQZXCMSrcCP8dD1WLGCVZ53EtYbumN1aCbQ3Y4fRDE9P9++jh
	 wR887XlFE1puW2hqm2yRWw/GgE813/aBqOjtwyUKlW8wur/B3y/6nEgJmNvlJgfysb
	 nOiREkkLzv31X8BusSWsU10fHTXNxtjcpx7Dm09J1EFWvboqUwX4tSB1kmx4Vn4mL3
	 kfClnkxg+aYEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76C5EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 13:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168769878867.14279.7859643313215579274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f207edf602fc06883ad1aae23b1c202f582fd7fbcb591b877c5bafa3866605
Date: Sun, 25 Jun 2023 13:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687698788
