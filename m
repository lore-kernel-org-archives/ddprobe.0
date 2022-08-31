Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36607E5
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 689A2C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661987453;
	bh=jEuojp6WzodEBNjRXpR6OJrMpqDcw2ttoZJAfp5IjrQ=;
	h=To:Subject:From:Date:From;
	b=Bm5d1bfXKKH/NYirysEOn7jP6tzlNi3UW+7UaPnt2wRQCeWLie7wi2OxbpXPTpWuw
	 gSsV9Qgg2n59S0nfsHZJN1Z0L08gl75auyHe0Oti6IvLY1iqz7ZvrWFITgspocVz/A
	 rZWDRPKUXahZVtzM1a3yhl4rDukS6ZpfRpPXxDPct0xQyZIGPjW0xlVXKZLP1tNed2
	 o73bQPvXabQT+qVBQDnk6P1NLaFFQi2csZCKESjRNgVavCRwcbaLJhWhqvG2z8yeTW
	 MGXX+dcdaer6x1g3V/TzCmtGcaEt7NStji+Th91EgERnf2JTHnQMf1wzVvgbJn6Sth
	 05D2wQQjMvUBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 515AAECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166198745332.9829.6077688026739788247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e244348d3280efae6397d51a27248948d905186afb0436c3ced7901bf4a0f4c
Date: Wed, 31 Aug 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661987453
