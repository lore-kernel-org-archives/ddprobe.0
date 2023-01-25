Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362284C83
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 21:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF40AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 21:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674681785;
	bh=mkRshtEdldfIUrqVJDgYhU+Mej1LM5rshVmevPzjE1s=;
	h=To:Subject:From:Date:From;
	b=osomxwDZjBUDJ3Gq9yX5elCkU1ELshQUFPmJDcXiM5m3BfElw78bDAC/vYiuctK/O
	 5gU8tB4UXDoZLTbCMQGvcfpafzztw5IHnYKcB6eK2NDYmbV6Fy7vFA/DkeeaFQw1Zl
	 SzD5Iche9X3tX56JoMclYxrwqinUv5HQUWicNqBhRYP/womlzX3OXzwIHrFWQgoEaO
	 EL+Y9LtRis+F0PX88pt2KMKFhFo/5vAa7FZNux6IDtCRRfR5v9/dOSV1H/ztS9cWlW
	 Oii9vpL8USPwkVxIiwS7zkeSoHO8wySrAc6i+Pdh1EH0goHIZmobHbJ/WUQRdxHcLN
	 KyL82GLm4RlmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C222FC54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 21:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167468178578.12558.2979051811820492523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df921612cb38b8e7e9b92ff5f2d303c2ecf9a99368a9681897cceb32a40b348
Date: Wed, 25 Jan 2023 21:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674681785
