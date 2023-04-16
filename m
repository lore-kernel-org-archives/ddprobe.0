Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F76139A
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8C0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681635965;
	bh=AMcnI0Z0YsA8jSjOc1CadE62BaDQ8bETHPwc1J0WDYE=;
	h=To:Subject:From:Date:From;
	b=p7ITAyD9SXAP1W7uxHCDmiwgMY4UDzRKUxinZI28hWo4zomj+2LqLT/5gqBGbrfcS
	 GXqGrolWpBAQu67aFS/MIorF8/Y7yzexr1FlQIluamNjzJI5NDAw/I0vDr6GDYLZYJ
	 6KbfyxsYMqI77cGPZEuI7kWPRNas4/ZV7wAJxNHkHB4sPMKko+4ZksQT3tzk9iwaso
	 N8HcP8FQFlBNykJsRz/kkmPAuNMvrHdgIA/pdbiCG6lF9OQNXufkKO8De28IDB4NP9
	 YMJHRuJxgtKcMj8GGthOiX1qeuFRdyy9uFwC/4gtJUorneaD51Fx6FViZBXl70ei3+
	 VXnbCEbzZI/Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5425C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168163596573.21726.8434603875881751848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d681f579194597333bb26ce064b4dca91cc0770deb486ca05df307fcde34554c
Date: Sun, 16 Apr 2023 09:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681635965
