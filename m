Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DEAF19509
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 16:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21945C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 16:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686327966;
	bh=d0LxbT4zQnft4PP+rL+2gDBO0lIiQKqR16il4NkzxIc=;
	h=To:Subject:From:Date:From;
	b=s67BYMYiKRupIZIyO5f9YrQ/NofTOhsVCCj47KtbV1UkeLw0Gm4XqqlloXUJTraR7
	 JU+3kukWh5dPgtn9iGryZNlKNVJUxTrW6ZNYhRltA7BTV3yPkQMW2AW2KUhj64iSop
	 GMSCNsXxl9H+jNSFT6BJDivahFGgT6QccMzwX0pRPUIgXZ7Fw1oAQuYx6BerEf+OVK
	 W/aw6mjpq/NRAl8VzqEhMM24hXs+yOam2FNB0jy0N2fBA4whABJAEtKDEZuHZEqkdD
	 6msKF0yuuyBhvbhQNEq3LIUop/+2ffxNmpWyaKMp1cYumCghzWNdaGPGikOz/tG6e2
	 oFVCLHjXjk9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECFD1C7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 16:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168632796596.29306.1057940411799195647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71dec7af4af21fdf6daa0012a0bf04fbd5057b57f731bfbc73ea884cbe86a4fd
Date: Fri, 09 Jun 2023 16:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686327965
