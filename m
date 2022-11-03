Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62C4256D
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5DBC433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667518254;
	bh=1PI+VTh3r9w0MW7QAvkA4qn2qL2iFCNfpW+yci1gRRE=;
	h=To:Subject:From:Date:From;
	b=CltcoQG+M2av9/ZcLnm+d07nV+pEukZ9hs42RL2EW5T1OKCIT17MyF2kfck9tGZnb
	 OhJIfnpDGCiC/2sPAWq03OUVBh0XpwAUQaicM0F9+JDOFvp3eZkMpkySU8MJehC4SY
	 t5hHOiSwHoNBBekWAAn8aDbsyQCIHIJhRaUiQlocN9RoLUCnyFvjdRfOC04jWUYJM9
	 Vjk8//ZCPpl354uLN2hJCdnKq+suLayHT6kaT5LfPRNNWhoQW51deLVQ/rqiE/HgXR
	 Y1e+MV3a2Jo1gP4x94xqH8x7sXMGS6UxE/2XypvzXbbM07kmJPuGqkDCZmv4ZV9N4M
	 BXeFr+PPoTb+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC22C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166751825434.5188.7677651009081307005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf8b62f68991a4879cb5db10b6f5c02e1956d4bd93833e4596f5af124aace7e
Date: Thu, 03 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667518254
