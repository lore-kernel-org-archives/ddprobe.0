Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9095258
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 17:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CAFC433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 17:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683479285;
	bh=bZUxXk+7ZLRx6vfRE8JB/5EeE7pekeiWKtix+MioQKs=;
	h=To:Subject:From:Date:From;
	b=U5fuXMi5gMO/AJQO++d1MPtPVo3VO+6AB4/drE7FaB8DoAsF/8bjcpQpy7kX2fFDl
	 V2AYJIytKxsVZUG5q5C3pcWGYgMknRJz7RyzkPCU8INwfSfK6XBp2qCPnMvhc5/y5j
	 HCvA8UkgORd2VyBX5PY9UndmK09L5nT9eERKNYC4TbrF+coxyTPxQU8IswvntSD1Xc
	 kWIBjP9GKQYxof5AwVhPJQd/SZBTtOclMsxxIjma29wdCDGerS4tdkYl8uCiF+YlQD
	 3yjKpssB59fJw1YcPYT1JJl77I3FCLGJ3Ilpl5P4HNjZVTyClPgBdXs/BsWXn6csbD
	 3/cWwm1I8Gz4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B554AC77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 17:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168347928572.32076.5811981958723592386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e81bd7f6308dccebb37373d9bd9f7efda15d52b3afc4f7d6ee64f7aa937aea5
Date: Sun, 07 May 2023 17:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683479285
