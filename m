Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B434F7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67C2BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666740053;
	bh=1daNHmdY2dazPlOqTHvJecSUozK184L06ZJHt3Rv26I=;
	h=To:Subject:From:Date:From;
	b=fP0VDmM27QgIMThsBHhBu4mva4vswBP082fc1YcJ9DImyNhLIz5bN5Eh4uTe+SUQg
	 eCbVwBMiSNRveNln/cKOYgM0CVk1OUwjIQ3psyMRrqh7IM0VbO5HkkaJTwKv/lMAyu
	 dVmjg7txmHRrCH8et2WmbNBeMvB7FyUxKDNaL+2/GKvCmEgElTn1AYX1PyhIvJ5m1N
	 HbCo67HWeIcMASHCgXJVHtLrY7ouAc50sGlKHWoJQlclIfSA/bASsnW1UTsDfqaOGm
	 pYNsFJbaAUFkcDoiJ62Rmm+eeiRmPNcwykQ3lXQUhRCPFzILc5UkUiT07zKm+u0db1
	 H/lujIdfsqMrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E39C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674005332.10648.5249275400071267744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378028dc1869770dafee50920b27325eb9e41907aa40ca219646c8db6b293cab
Date: Tue, 25 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666740053
