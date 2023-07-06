Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1C4A5A
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 03:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC064C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 03:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688613428;
	bh=Y2amVXP9Mh0mmZD9y9f3NvNUFd30c1RIDJWDrCAmGIs=;
	h=To:Subject:From:Date:From;
	b=MCZIBkCGEQJa2MZOfOFzwGXh59XqN17eYKD0Gq/5rCIXxlBXC0B6VLNMHDORGZ90I
	 OhdnoGTwpKOO856iiXQtUEOvyFYOSeAMJdyua/vFx7VZes/Hp9dNyWTI5tPncCOWBC
	 GNx2pM6MmWFelVeL+bIJcg3BDAsOuvmhM8LHqVcm3iBSWb9ONCqnPZT4NQKcPyLydN
	 G9/rWqIvxA5YdTpPzfVrqaWChViBqm+RQTEUY6Ew0GR6zl0DzS9viStcVVfYqC36ez
	 HyKTaXPInvbISOd2GausxI18+wxvsOLzW/GHQJwyG2qjGIezEQ1/duRhss7b/K7OGt
	 kPISjh83a1pnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBDEEB64DA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 03:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168861342871.31809.6912273628482463357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519740ad774f954f3d4f5be2074b2fecf736cbc901694a9fc6404d614ac0f218
Date: Thu, 06 Jul 2023 03:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688613428
