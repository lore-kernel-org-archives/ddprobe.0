Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B533E2F5B
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F2D8C433D7
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664982053;
	bh=tLPKQmbU68IOOlAXsIQpzY576aFKKh3yEayuas6Fy4A=;
	h=To:Subject:From:Date:From;
	b=byPYkOx7Tr0/QHnlh6HW/nXqXp1LoLbuYzY9wXi1oClltySecj5M5fgV14Ik9TWLR
	 t2KU9HSpWCVraxZbFDQfmXwdmcU0H/3A/4O4hcSK23hb9lLkmKCGc4uAkp2f39xj56
	 aPnWWMq5vSPyDhsdaiwDXMar3ygtuAeNfLQBKXvInMSdTIBYQ4fuzuPsiFIvPLTwkZ
	 1ymn4XotrC4DmcXvQl1CIFYKQDdhTZf2LYBW4DT+55DPO7x4CTwfbA5NtHVq86ceNs
	 u5xv4Y5jD9EjzrtzA59Rs0BrdzZ08WJEXdjNsGOesVFpPDVrDpdWUnbZK+h3NroOfu
	 YhH0UBWCKJHkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535ADC4332F
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166498205333.19079.7565638836573444116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b782984e2068289414125afd4e3a98a10ff4dff5135456fcd015d949e58cc48a
Date: Wed, 05 Oct 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664982053
