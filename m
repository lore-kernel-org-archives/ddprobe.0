Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C622B3C35
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2F3C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662370253;
	bh=lwukQn/8H6YfIpMB5MAPP7gcqTwSTcBKAHvAJhtVJgY=;
	h=To:Subject:From:Date:From;
	b=IUs9dasqjQ1if7pULgzyJwBLN/KF9AkWBbFWw6K89eG/jXy00B2jTF1AtcMuTYU9h
	 an6sEm2TboxQT6BO9dS7KyMR8Dh9C5ZUZX4YaCrcUAWy7jOqPtxkDOWE0VfEs8oXlV
	 CjOK7QX4ZT4NImG1YV1yHvX1wn/JOo4TkjIMQ8INeMu1KxucCo6Ww3mFCBaEPHabDr
	 L9vsQ1eDdflBggRo4/XqhJY6kOI2hjRQfmS4chA+umFHzH/FroBZaSf/V4o+dwU8nB
	 IP93RSnbNSeBlxeK9rthm3JdqDDWywHF2ZcuklIQ9RKP+AWJm80la8F6X1EswS8CrI
	 zOIN3J0RyWonA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FC8ECAAA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166237025333.27727.14012424095670380173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ddac832fc95f55908f0cfa5b7eadee41a173c2f1ce57e8073ba767fe95fee5e
Date: Mon, 05 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662370253
