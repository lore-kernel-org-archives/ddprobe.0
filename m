Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C642584
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A66C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667688054;
	bh=tB9rTpeKuNyzvnAQctnuCoo0FhvDvcas0yFyufBhESY=;
	h=To:Subject:From:Date:From;
	b=BLyhkr21W+Y9o1qFjIdtzn3WCXEzjfsjMUcmdm4K3kkubPOr6OzDYid+XxpNMB8u9
	 fCspuC4hy9P/Lep8SLQHgzFXspyD9P0bRXMyGbqv5L6eo/6qglYBC0KGQeJmSpGvGS
	 y1V7cXKqwl+gyZL1t2vQh4Kpimnlc45VSWJs8KEMPRQEGApJpt2iSPgpbzMKe2RsuD
	 OkxF558wSyE3RJ1pOYb7y49F2mjnf6z1Rv5h8llZRtkVIjfCksrHIWUOUSgMiymtEZ
	 oHOKuSyaUM2Qv7ypgEL4pkB6spr1PjbDvNBRMB15m/ger6zqydqmsOoRL7FPVivHtg
	 5zb72iQJDX17g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 579DDC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166768805434.2796.4848674520348957097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568991409f9b6534b58d7ec2048109ad1b2cfc32ace5f898c124827275f75729
Date: Sat, 05 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667688054
